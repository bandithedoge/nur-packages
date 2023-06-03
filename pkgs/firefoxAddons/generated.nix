{
  buildFirefoxXpiAddon,
  fetchurl,
  lib,
  stdenv,
}: {
  "augmented-steam" = buildFirefoxXpiAddon {
    pname = "augmented-steam";
    version = "2.4.1";
    addonId = "{1be309c5-3e4f-4b99-927d-bb500eb4fa88}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4054613/augmented_steam-2.4.1.xpi";
    sha256 = "962412b40471bc0dfafe72cd29c7e80ef789c33dc322086bbc03d3a89a5d08db";
    meta = with lib; {
      homepage = "https://augmentedsteam.com/";
      description = "Augments your Steam Experience";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  "auto-tab-discard" = buildFirefoxXpiAddon {
    pname = "auto-tab-discard";
    version = "0.6.7";
    addonId = "{c2c003ee-bd69-42a2-b0e9-6f34222cb046}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4045009/auto_tab_discard-0.6.7.xpi";
    sha256 = "89e59b8603c444258c89a507d7126be52ad7a35e4f7b8cfbca039b746f70b5d5";
    meta = with lib; {
      homepage = "https://webextension.org/listing/tab-discard.html";
      description = "Increase browser speed and reduce memory load and when you have numerous open tabs.";
      license = licenses.mpl20;
      platforms = platforms.all;
    };
  };
  "base64-decoder" = buildFirefoxXpiAddon {
    pname = "base64-decoder";
    version = "1.0";
    addonId = "{b20e4f00-ab03-4a88-90e7-4f6b6232c5a9}";
    url = "https://addons.mozilla.org/firefox/downloads/file/806183/base64_decoder-1.0.xpi";
    sha256 = "77703d2f99b04279486ffc67daf4db8700e46799ffd68ee5d168b540e02307bf";
    meta = with lib; {
      description = "select some text, and base64 decode it.";
      license = licenses.mpl20;
      platforms = platforms.all;
    };
  };
  "betterviewer" = buildFirefoxXpiAddon {
    pname = "betterviewer";
    version = "1.0.5";
    addonId = "ademking@betterviewer";
    url = "https://addons.mozilla.org/firefox/downloads/file/4002455/betterviewer-1.0.5.xpi";
    sha256 = "01b90d2afc4dc5de93dbb2eff2cc1cbd8eac181ddefb9d9506ff36788db901a7";
    meta = with lib; {
      homepage = "https://github.com/Ademking/BetterViewer";
      description = "BetterViewer was designed as a replacement for the image viewing mode built into Firefox and Chrome-based web browsers. With BetterViewer you can use various keyboard shortcuts to quickly pan, zoom images, edit and a lot more!";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "canvasblocker" = buildFirefoxXpiAddon {
    pname = "canvasblocker";
    version = "1.9";
    addonId = "CanvasBlocker@kkapsner.de";
    url = "https://addons.mozilla.org/firefox/downloads/file/4097901/canvasblocker-1.9.xpi";
    sha256 = "5248c2c2dedd14b8aa2cd73f9484285d9453e93339f64fcf04a3d63c859cf3d7";
    meta = with lib; {
      homepage = "https://github.com/kkapsner/CanvasBlocker/";
      description = "Alters some JS APIs to prevent fingerprinting.";
      license = licenses.mpl20;
      platforms = platforms.all;
    };
  };
  "csgofloat" = buildFirefoxXpiAddon {
    pname = "csgofloat";
    version = "2.4.3";
    addonId = "{194d0dc6-7ada-41c6-88b8-95d7636fe43c}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3845184/csgofloat-2.4.3.xpi";
    sha256 = "e129f9af864916beb2eae3bf8a3b5ad169371190d1d44f40d8fb76912cf810cc";
    meta = with lib; {
      homepage = "https://csgofloat.com";
      description = "CSGOFloat Market Checker uses the dedicated CSGOFloat API to allow you to retrieve the float values, 3d models, and screenshots of market items directly from the page!";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "dont-fuck-with-paste" = buildFirefoxXpiAddon {
    pname = "dont-fuck-with-paste";
    version = "2.7";
    addonId = "DontFuckWithPaste@raim.ist";
    url = "https://addons.mozilla.org/firefox/downloads/file/3630212/don_t_fuck_with_paste-2.7.xpi";
    sha256 = "ef17dcef7e2034a25982a106e54d19e24c9f226434a396a808195ef0de021a40";
    meta = with lib; {
      homepage = "https://github.com/aaronraimist/DontFuckWithPaste";
      description = "This add-on stops websites from blocking copy and paste for password fields and other input fields.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "downthemall" = buildFirefoxXpiAddon {
    pname = "downthemall";
    version = "4.10.1";
    addonId = "{DDC359D1-844A-42a7-9AA1-88A850A938A8}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4115622/downthemall-4.10.1.xpi";
    sha256 = "38795ef655c17921f857d67d59c1a799c24d912bc07c21ef96b97b4eee90422c";
    meta = with lib; {
      homepage = "https://www.downthemall.org/";
      description = "The Mass Downloader for your browser";
      license = licenses.gpl2;
      platforms = platforms.all;
    };
  };
  "enhanced-github" = buildFirefoxXpiAddon {
    pname = "enhanced-github";
    version = "5.0.11";
    addonId = "{72bd91c9-3dc5-40a8-9b10-dec633c0873f}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3764141/enhanced_github-5.0.11.xpi";
    sha256 = "a75d7844b261289d099cf99b1c8915210919b371069f066af139d5a7892967b6";
    meta = with lib; {
      homepage = "https://github.com/softvar/enhanced-github";
      description = "Display repo size, size of each file, download link and option to copy file contents";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "enhancer-for-youtube" = buildFirefoxXpiAddon {
    pname = "enhancer-for-youtube";
    version = "2.0.117.10";
    addonId = "enhancerforyoutube@maximerf.addons.mozilla.org";
    url = "https://addons.mozilla.org/firefox/downloads/file/4040535/enhancer_for_youtube-2.0.117.10.xpi";
    sha256 = "a15758d3c42416575c188cf756dd1f5ce7e0194ebf1055979eff2f21a1bed736";
    meta = with lib; {
      homepage = "https://www.mrfdev.com/enhancer-for-youtube";
      description = "Take control of YouTube and boost your user experience!";
      platforms = platforms.all;
    };
  };
  "gesturefy" = buildFirefoxXpiAddon {
    pname = "gesturefy";
    version = "3.2.7";
    addonId = "{506e023c-7f2b-40a3-8066-bc5deb40aebe}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4016417/gesturefy-3.2.7.xpi";
    sha256 = "24eeac920b89d6760e6134471ecf14916a1d2fb470aea6ab9ba52cb2330db83b";
    meta = with lib; {
      homepage = "https://github.com/Robbendebiene/Gesturefy";
      description = "Navigate, operate, and browse faster with mouse gestures! A customizable mouse gesture add-on with a variety of different commands.";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  "gitako" = buildFirefoxXpiAddon {
    pname = "gitako";
    version = "3.11.4";
    addonId = "{983bd86b-9d6f-4394-92b8-63d844c4ce4c}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4112863/gitako_github_file_tree-3.11.4.xpi";
    sha256 = "5c094a8b916d50128bd33a9fd300eb1c27e80831d877a34a9133b6c89c14c017";
    meta = with lib; {
      homepage = "https://github.com/EnixCoda/Gitako";
      description = "Gitako is a file tree extension for GitHub, available on Firefox, Chrome, and Edge.\n\nVideo intro: <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/1c1a0c23e84b9c3e43af4c047563692e835dfa55acf38822fa3ca2bd4cb9ad0e/https%3A//youtu.be/r4Ein-s2pN0\" rel=\"nofollow\">https://youtu.be/r4Ein-s2pN0</a>\nHomepage: <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/414db85f00575463826dd366beac0a912bf5a9dc43e679f39ddb998d218d376c/https%3A//github.com/EnixCoda/Gitako\" rel=\"nofollow\">https://github.com/EnixCoda/Gitako</a>";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "github-code-folding" = buildFirefoxXpiAddon {
    pname = "github-code-folding";
    version = "0.1.1";
    addonId = "{b588f8ac-dbdf-4397-bcd7-3d29be2f17d7}";
    url = "https://addons.mozilla.org/firefox/downloads/file/569290/github_code_folding-0.1.1.xpi";
    sha256 = "62f9e4fad039a2fa29223c267d9ddd497bbc9f8481140f80e333b0fb2f2c29a8";
    meta = with lib; {
      homepage = "https://github.com/noam3127/github-code-folding";
      description = "Enable code folding when viewing files in GitHub.";
      license = licenses.mpl20;
      platforms = platforms.all;
    };
  };
  "github-isometric-contributions" = buildFirefoxXpiAddon {
    pname = "github-isometric-contributions";
    version = "1.1.26";
    addonId = "isometric-contributions@jasonlong.me";
    url = "https://addons.mozilla.org/firefox/downloads/file/4098896/github_isometric_contributions-1.1.26.xpi";
    sha256 = "1c4eb3e4ecbd1381189319e49cc0c16d68dffefd1064a15678a8f50762147a50";
    meta = with lib; {
      description = "Renders an isometric pixel view of GitHub contribution graphs.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "github-repo-size" = buildFirefoxXpiAddon {
    pname = "github-repo-size";
    version = "1.7.0";
    addonId = "github-repo-size@mattelrah.com";
    url = "https://addons.mozilla.org/firefox/downloads/file/3854469/github_repo_size-1.7.0.xpi";
    sha256 = "db3198d767ac62eb1ac362335ccfb590fd01ff452bc6ed328fbc5794396eb6da";
    meta = with lib; {
      homepage = "https://github.com/Shywim/github-repo-size";
      description = "Add repositories size to their GitHub summary band using the GitHub public API.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "imagus" = buildFirefoxXpiAddon {
    pname = "imagus";
    version = "0.9.8.74";
    addonId = "{00000f2a-7cde-4f20-83ed-434fcb420d71}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3547888/imagus-0.9.8.74.xpi";
    sha256 = "2b754aa4fca1c99e86d7cdc6d8395e534efd84c394d5d62a1653f9ed519f384e";
    meta = with lib; {
      homepage = "https://tiny.cc/Imagus";
      description = "With a simple mouse-over you can enlarge images and display images/videos from links.";
      platforms = platforms.all;
    };
  };
  "lovely-forks" = buildFirefoxXpiAddon {
    pname = "lovely-forks";
    version = "3.7.2";
    addonId = "github-forks-addon@musicallyut.in";
    url = "https://addons.mozilla.org/firefox/downloads/file/3805375/lovely_forks-3.7.2.xpi";
    sha256 = "a96c0da726fd46ce6a14ea39ceaaf571e7cf9a2d467b2e2e72543a7c57312b78";
    meta = with lib; {
      homepage = "https://github.com/musically-ut/lovely-forks";
      description = "Show notable forks of Github projects.";
      license = licenses.mpl20;
      platforms = platforms.all;
    };
  };
  "material-icons-for-github" = buildFirefoxXpiAddon {
    pname = "material-icons-for-github";
    version = "1.8.3";
    addonId = "{eac6e624-97fa-4f28-9d24-c06c9b8aa713}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4118817/material_icons_for_github-1.8.3.xpi";
    sha256 = "6f86fcee091ec2058f9e62e7cd7e63b2e3d522acb8a3df6381c366b56a192094";
    meta = with lib; {
      homepage = "https://github.com/Claudiohbsantos/github-material-icons-extension";
      description = "Replace the file/folder icons on github file browsers with icons representing the file's type and which tool it is used by.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "npm-hub" = buildFirefoxXpiAddon {
    pname = "npm-hub";
    version = "2023.5.29";
    addonId = "npm-hub@sikelianos.com";
    url = "https://addons.mozilla.org/firefox/downloads/file/4117658/npm_hub-2023.5.29.xpi";
    sha256 = "3c59f51145e2fd42f0b56fdf42cfb6a8e882d04149756466a512d3ab2435bbfb";
    meta = with lib; {
      homepage = "https://github.com/npmhub/npmhub";
      description = "Explore npm dependencies on GitHub repos";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "octolinker" = buildFirefoxXpiAddon {
    pname = "octolinker";
    version = "6.10.5";
    addonId = "octolinker@stefanbuck.com";
    url = "https://addons.mozilla.org/firefox/downloads/file/4029754/octolinker-6.10.5.xpi";
    sha256 = "36a953c5bd3a60648a45ec04fb131664f54f2d31caf26853c2b3d438d50674c1";
    meta = with lib; {
      homepage = "https://octolinker.vercel.app";
      description = "It turns language-specific module-loading statements like include, require or import into links. Depending on the language it will either redirect you to the referenced file or to an external website like a manual page or another service.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "privacy-badger" = buildFirefoxXpiAddon {
    pname = "privacy-badger";
    version = "2023.5.10";
    addonId = "jid1-MnnxcxisBPnSXQ@jetpack";
    url = "https://addons.mozilla.org/firefox/downloads/file/4109050/privacy_badger17-2023.5.10.xpi";
    sha256 = "8ff7650d1ce133894293d1a3e268bb24d300e77a1c25488ed17846e71d8b33e8";
    meta = with lib; {
      homepage = "https://privacybadger.org/";
      description = "Automatically learns to block invisible trackers.";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  "privacy-pass" = buildFirefoxXpiAddon {
    pname = "privacy-pass";
    version = "3.0.5";
    addonId = "{48748554-4c01-49e8-94af-79662bf34d50}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4068311/privacy_pass-3.0.5.xpi";
    sha256 = "a8f1d496986af78fd91b9e44c782b80afc45d0cb39013d5cfb54da1611e21273";
    meta = with lib; {
      homepage = "https://privacypass.github.io";
      description = "Client-side of the Privacy Pass protocol providing unlinkable cryptographic tokens.";
      license = licenses.bsd2;
      platforms = platforms.all;
    };
  };
  "pronoundb" = buildFirefoxXpiAddon {
    pname = "pronoundb";
    version = "0.14.0";
    addonId = "firefox-addon@pronoundb.org";
    url = "https://addons.mozilla.org/firefox/downloads/file/4117076/pronoundb-0.14.0.xpi";
    sha256 = "5dfdf47a4fca7411b3772f80b9aaec37afb6db7cead5ef2942af791920d9768e";
    meta = with lib; {
      homepage = "https://pronoundb.org";
      description = "PronounDB is a browser extension that helps people know each other's pronouns easily and instantly. Whether hanging out on a Twitch chat, or on any of the supported platforms, PronounDB will make your life easier.";
      license = licenses.bsd2;
      platforms = platforms.all;
    };
  };
  "reddit-enhancement-suite" = buildFirefoxXpiAddon {
    pname = "reddit-enhancement-suite";
    version = "5.22.17";
    addonId = "jid1-xUfzOsOFlzSOXg@jetpack";
    url = "https://addons.mozilla.org/firefox/downloads/file/4092764/reddit_enhancement_suite-5.22.17.xpi";
    sha256 = "f49827c7684076dbf6890741dbbc31e82c180f87cb3fd745216ba2432398b1d9";
    meta = with lib; {
      homepage = "https://redditenhancementsuite.com/";
      description = "Reddit Enhancement Suite (RES) is a suite of tools to enhance your Reddit browsing experience.";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  "refined-github" = buildFirefoxXpiAddon {
    pname = "refined-github";
    version = "23.6.2";
    addonId = "{a4c4eda4-fb84-4a84-b4a1-f7c1cbf2a1ad}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4119553/refined_github-23.6.2.xpi";
    sha256 = "218470b74c1e89c51cdca7f04bb5c66638bc243a5bc4b0b01b2feca9a2fc7c58";
    meta = with lib; {
      homepage = "https://github.com/sindresorhus/refined-github";
      description = "Simplifies the GitHub interface and adds many useful features.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "sidebery" = buildFirefoxXpiAddon {
    pname = "sidebery";
    version = "4.10.2";
    addonId = "{3c078156-979c-498b-8990-85f7987dd929}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3994928/sidebery-4.10.2.xpi";
    sha256 = "60e35f2bfac88e5b2b4e044722dde49b4ed0eca9e9216f3d67dafdd9948273ac";
    meta = with lib; {
      homepage = "https://github.com/mbnuqw/sidebery";
      description = "Tabs tree and bookmarks in sidebar with advanced containers configuration.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "sourcegraph" = buildFirefoxXpiAddon {
    pname = "sourcegraph";
    version = "23.4.14.1343";
    addonId = "sourcegraph-for-firefox@sourcegraph.com";
    url = "https://addons.mozilla.org/firefox/downloads/file/4097469/sourcegraph_for_firefox-23.4.14.1343.xpi";
    sha256 = "fa02236d75a82a7c47dabd0272b77dd9a74e8069563415a7b8b2b9d37c36d20b";
    meta = with lib; {
      description = "Adds code intelligence to GitHub, GitLab, Bitbucket Server, and Phabricator: hovers, definitions, references. Supports 20+ languages.";
      platforms = platforms.all;
    };
  };
  "sponsorblock" = buildFirefoxXpiAddon {
    pname = "sponsorblock";
    version = "5.4.8";
    addonId = "sponsorBlocker@ajay.app";
    url = "https://addons.mozilla.org/firefox/downloads/file/4117298/sponsorblock-5.4.8.xpi";
    sha256 = "7ec9815177ea05688c3cad85806e6b945786be622a5f438c33e94a8720de043c";
    meta = with lib; {
      homepage = "https://sponsor.ajay.app";
      description = "Easily skip YouTube video sponsors. When you visit a YouTube video, the extension will check the database for reported sponsors and automatically skip known sponsors. You can also report sponsors in videos.\n\nOther browsers: https://sponsor.ajay.app";
      license = licenses.lgpl3;
      platforms = platforms.all;
    };
  };
  "steam-database" = buildFirefoxXpiAddon {
    pname = "steam-database";
    version = "3.6.6";
    addonId = "firefox-extension@steamdb.info";
    url = "https://addons.mozilla.org/firefox/downloads/file/4106867/steam_database-3.6.6.xpi";
    sha256 = "1042f5a1b61ee4083e8999405da601bc6fa43cf9069f078b5da45261f40bce2b";
    meta = with lib; {
      homepage = "https://steamdb.info/";
      description = "Adds SteamDB links and new features on the Steam store and community. View lowest game prices and stats.";
      license = licenses.bsd2;
      platforms = platforms.all;
    };
  };
  "stylus" = buildFirefoxXpiAddon {
    pname = "stylus";
    version = "1.5.33";
    addonId = "{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4114817/styl_us-1.5.33.xpi";
    sha256 = "d6b8cc1f4d0986ffa117999065eb5bb8b5596136aa60cb9ff746073656704822";
    meta = with lib; {
      homepage = "https://add0n.com/stylus.html";
      description = "Redesign your favorite websites with Stylus, an actively developed and community driven userstyles manager. Easily install custom themes from popular online repositories, or create, edit, and manage your own personalized CSS stylesheets.";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  "tabcenter-reborn" = buildFirefoxXpiAddon {
    pname = "tabcenter-reborn";
    version = "2.3.1";
    addonId = "tabcenter-reborn@ariasuni";
    url = "https://addons.mozilla.org/firefox/downloads/file/3829515/tabcenter_reborn-2.3.1.xpi";
    sha256 = "d31c693c896045d4326c7e9e0152830820009bd60f62b36043bb322cab713f34";
    meta = with lib; {
      homepage = "https://framagit.org/ariasuni/tabcenter-reborn";
      description = "Simple and powerful vertical tab bar";
      license = licenses.mpl20;
      platforms = platforms.all;
    };
  };
  "tree-style-tab" = buildFirefoxXpiAddon {
    pname = "tree-style-tab";
    version = "3.9.15";
    addonId = "treestyletab@piro.sakura.ne.jp";
    url = "https://addons.mozilla.org/firefox/downloads/file/4088468/tree_style_tab-3.9.15.xpi";
    sha256 = "7c993bae2d43488615f1a3b7459a2c35730a486b3855049709c636a84751d252";
    meta = with lib; {
      homepage = "http://piro.sakura.ne.jp/xul/_treestyletab.html.en";
      description = "Show tabs like a tree.";
      platforms = platforms.all;
    };
  };
  "tridactyl" = buildFirefoxXpiAddon {
    pname = "tridactyl";
    version = "1.23.0";
    addonId = "tridactyl.vim@cmcaine.co.uk";
    url = "https://addons.mozilla.org/firefox/downloads/file/4036604/tridactyl_vim-1.23.0.xpi";
    sha256 = "08b7af97bef05300ab3ac3ad721322ff00505631233482568fc4489c16d51b71";
    meta = with lib; {
      homepage = "https://tridactyl.xyz";
      description = "Vim, but in your browser. Replace Firefox's control mechanism with one modelled on Vim.\n\nThis addon is very usable, but is in an early stage of development. We intend to implement the majority of Vimperator's features.";
      platforms = platforms.all;
    };
  };
  "ublock-origin" = buildFirefoxXpiAddon {
    pname = "ublock-origin";
    version = "1.49.2";
    addonId = "uBlock0@raymondhill.net";
    url = "https://addons.mozilla.org/firefox/downloads/file/4103048/ublock_origin-1.49.2.xpi";
    sha256 = "39266486f720cd31d291d2fdad78625b079782a05517e1936eec7e780bc2a84d";
    meta = with lib; {
      homepage = "https://github.com/gorhill/uBlock#ublock-origin";
      description = "Finally, an efficient wide-spectrum content blocker. Easy on CPU and memory.";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  "violentmonkey" = buildFirefoxXpiAddon {
    pname = "violentmonkey";
    version = "2.14.0";
    addonId = "{aecec67f-0d10-4fa7-b7c7-609a2db280cf}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4076005/violentmonkey-2.14.0.xpi";
    sha256 = "6c25cfb7d464c22ea4c560e5271a0cacd49b8fe0c404420fb5b4fd2c78880b2d";
    meta = with lib; {
      homepage = "https://violentmonkey.github.io/";
      description = "Violentmonkey provides userscripts support for browsers.\nIt's open source! <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/c8bcebd9a0e76f20c888274e94578ab5957439e46d59a046ff9e1a9ef55c282c/https%3A//github.com/violentmonkey/violentmonkey\" rel=\"nofollow\">https://github.com/violentmonkey/violentmonkey</a>";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
}
