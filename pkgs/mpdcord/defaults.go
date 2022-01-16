package main

type Format struct {
	Details, State, LargeText, SmallText string
	Remaining, PlayingOnly               bool
}

type Config struct {
	ID                         int
	Address, Network, Password string
	Format                     Format
}

var DefaultConfig = Config{
	ID:       922175995828654100,
	Address:  "localhost:6600",
	Network:  "tcp",
	Password: "",
	Format: Format{
		Details:   "{title}",
		State:     "{artist}",
		LargeText: "{album}",
		SmallText: "{state}",
		Remaining: false,
        PlayingOnly: false,
	},
}
