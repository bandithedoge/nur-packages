package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"os"
	"os/signal"
	"strconv"
	"syscall"
	"time"

	"github.com/BurntSushi/toml"
	"github.com/akamensky/argparse"
	"github.com/dixonwille/wlog/v3"
	"github.com/fhs/gompd/mpd"
	"github.com/hugolgst/rich-go/client"
	"github.com/imdario/mergo"
)

func main() {
	// setup logger
	var ui wlog.UI
	ui = wlog.New(os.Stdin, os.Stdout, os.Stdout)
	ui = wlog.AddPrefix("?", wlog.Cross, " ", "", "", "~", wlog.Check, "!", ui)
	ui = wlog.AddColor(wlog.Magenta, wlog.Red, wlog.Blue, wlog.BrightWhite, wlog.White, wlog.BrightMagenta, wlog.Cyan, wlog.Green, wlog.Yellow, ui)
	ui = wlog.AddConcurrent(ui)

	// wait for ^C
	sigs := make(chan os.Signal, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)
	done := make(chan bool, 1)
	go func() {
		sig := <-sigs
		fmt.Println()
		fmt.Println(sig)
		done <- true
	}()

	// setup cli option parser
	parser := argparse.NewParser("mpdcord", "Discord Rich Presence for MPD written in Go")

	// get config path
	configHome := os.Getenv("XDG_CONFIG_HOME")
	var defaultConfigPath string
	if configHome != "" {
		defaultConfigPath = configHome + "mpdcord.toml"
	} else {
		homePath, _ := os.UserHomeDir()
		defaultConfigPath = homePath + "/.config/mpdcord.toml"
	}

	configPath := parser.String("c", "config", &argparse.Options{
		Required: false,
		Default:  defaultConfigPath,
		Help:     "Specify non-standard config path",
	})
	verbose := parser.Flag("v", "verbose", &argparse.Options{
		Required: false,
		Default:  false,
		Help:     "Output additional information, useful for debugging",
	})

	argerr := parser.Parse(os.Args)
	if argerr != nil {
		fmt.Print(parser.Usage(argerr))
		panic(argerr)
	}

	// check config path
	configContent, err := os.ReadFile(*configPath)
	if err != nil {
		ui.Warn("Couldn't read config at " + *configPath + ", using default values")
	} else if *verbose {
		ui.Info("Contents of " + *configPath)
		fmt.Println(string(configContent))
	}
	// read TOML values from config
	var config Config
	if err := toml.Unmarshal(configContent, &config); err != nil {
		panic(err)
	}
	// merge with default config
	mergo.Merge(&config, DefaultConfig)

	// pretty print current config
	if *verbose {
		prettyConfig := new(bytes.Buffer)
		if err := toml.NewEncoder(prettyConfig).Encode(config); err != nil {
			panic(err)
		}
		ui.Info("Current config:")
		fmt.Println(prettyConfig.String())
	}

	// connect to MPD
	connect := func() mpd.Client {
		ui.Running("Connecting to MPD at " + config.Address + " using " + config.Network)
		conn, err := mpd.DialAuthenticated(config.Network, config.Address, config.Password)
		if err != nil {
			ui.Error("Failed to connect to MPD")
		} else {
			ui.Success("Connected to MPD")
		}

		return *conn
	}

	// login to Discord
	login := func() error {
		ui.Running("Logging in to Discord as " + strconv.Itoa(config.ID))
		err := client.Login(strconv.Itoa(config.ID))
		if err != nil {
			ui.Error("Couldn't log in to Discord")
		} else {
			ui.Success("Logged in to Discord")
		}
		return err
	}

	// listen to MPD events
	watcher, _ := mpd.NewWatcher(config.Network, config.Address, config.Password, "")
	defer watcher.Close()

	// try to connect to MPD and Discord
	conn := connect()

	// pinging and reconnecting
	reconnect := func() {
		err := conn.Ping()
		if err != nil {
			ui.Running("Reconnecting to MPD")
			conn = connect()
		}
		discord := login()
		if discord != nil {
			login()
		}
	}

	// timeout, _ := time.ParseDuration(config.Timeout)
	var song, status, stats mpd.Attrs
	var mpdmap map[string]string

	go func() {
		for range watcher.Event {
			// we have to reconnect every once in a while so we don't get timed out
			// there's probably a better way of fixing this but i'm too lazy to debug things properly
			reconnect()
			{
				// get current status
				song, _ = conn.CurrentSong()
				status, _ = conn.Status()
				stats, _ = conn.Stats()

				if *verbose {
					fmt.Println("---", time.Now().Format(time.UnixDate))
					fmt.Println(song)
					fmt.Println(status)
					fmt.Println(stats)
				}

				// merge mpd status maps
				mpdmap = MergeMaps(song, status, stats)

				if *verbose {
					out, _ := json.Marshal(mpdmap)
					ui.Info("Current status:")
					fmt.Println(string(out))
				}

				// define activity for RPC
				var activity client.Activity

				if !(config.Format.PlayingOnly && mpdmap["state"] != "play") {
					activity = client.Activity{
						Details:    Formatted(config.Format.Details, mpdmap),
						State:      Formatted(config.Format.State, mpdmap),
						LargeImage: "mpd",
						LargeText:  Formatted(config.Format.LargeText, mpdmap),
						SmallImage: mpdmap["state"],
						SmallText:  Formatted(config.Format.SmallText, mpdmap),
						Timestamps: &client.Timestamps{},
					}

					// properly format time
					if mpdmap["state"] == "play" {
						elapsed, _ := time.ParseDuration(status["elapsed"] + "s")
						start := time.Now().Add(-elapsed)
						activity.Timestamps.Start = &start

						if *verbose {
							ui.Info("Elapsed:")
							fmt.Println(elapsed.String())
							ui.Info("Start time:")
							fmt.Println(start.Format(time.UnixDate))
						}

						if config.Format.Remaining {
							duration, _ := time.ParseDuration(status["duration"] + "s")
							end := time.Now().Add(duration).Add(-elapsed)
							activity.Timestamps.End = &end

							if *verbose {
								ui.Info("Duration:")
								fmt.Println(duration.String())
								ui.Info("End time:")
								fmt.Println(end.Format(time.UnixDate))
							}
						}

					}

					if *verbose {
						out, _ := json.Marshal(activity)
						ui.Running("Setting RPC status")
						fmt.Println(string(out))
					}

					client.SetActivity(activity)
				} else {
                    if *verbose {
                        ui.Running("Logging out")
                    }
                    client.Logout()
				}
			}
		}
	}()

	<-done
	ui.Running("Closing MPD connection")
	conn.Close()
	ui.Running("Logging out")
	client.Logout()
}
