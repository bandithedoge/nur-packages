{
  buildFirefoxXpiAddon,
  fetchurl,
  lib,
  stdenv,
}: {
  "augmented-steam" = buildFirefoxXpiAddon {
    pname = "augmented-steam";
    version = "2.3.3";
    addonId = "{1be309c5-3e4f-4b99-927d-bb500eb4fa88}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3993774/augmented_steam-2.3.3.xpi";
    sha256 = "2789764199797bc15ccd2ec5351a90a0a1cd564c6f285ab139fc10fbe25cabc1";
    meta = with lib; {
      homepage = "https://augmentedsteam.com/";
      description = "Augments your Steam Experience";
      license = licenses.gpl3;
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
    version = "1.8";
    addonId = "CanvasBlocker@kkapsner.de";
    url = "https://addons.mozilla.org/firefox/downloads/file/3910598/canvasblocker-1.8.xpi";
    sha256 = "817a6181be877668eca1d0fef9ecf789c898e6d7d93dca7e29479d40f986c844";
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
  "don-t-fuck-with-paste" = buildFirefoxXpiAddon {
    pname = "don-t-fuck-with-paste";
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
    version = "2.0.115";
    addonId = "enhancerforyoutube@maximerf.addons.mozilla.org";
    url = "https://addons.mozilla.org/firefox/downloads/file/3964540/enhancer_for_youtube-2.0.115.xpi";
    sha256 = "a0728584ad2b36b10aec9e857fec477cbcd84f90e52a60771eb77f8f98e3b1d7";
    meta = with lib; {
      homepage = "https://www.mrfdev.com/enhancer-for-youtube";
      description = "Take control of YouTube and boost your user experience!";
      platforms = platforms.all;
    };
  };
  "gitako-github-file-tree" = buildFirefoxXpiAddon {
    pname = "gitako-github-file-tree";
    version = "3.9.0";
    addonId = "{983bd86b-9d6f-4394-92b8-63d844c4ce4c}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3995578/gitako_github_file_tree-3.9.0.xpi";
    sha256 = "57834c58cb5e08509f82aea6e67c515ed7ab6fac974d8ad459a8c295e133a2a4";
    meta = with lib; {
      homepage = "https://github.com/EnixCoda/Gitako";
      description = "Gitako is a file tree extension for GitHub, available on Firefox, Chrome, and Edge.\n\nVideo intro: <a href=\"https://outgoing.prod.mozaws.net/v1/1c1a0c23e84b9c3e43af4c047563692e835dfa55acf38822fa3ca2bd4cb9ad0e/https%3A//youtu.be/r4Ein-s2pN0\" rel=\"nofollow\">https://youtu.be/r4Ein-s2pN0</a>\nHomepage: <a href=\"https://outgoing.prod.mozaws.net/v1/414db85f00575463826dd366beac0a912bf5a9dc43e679f39ddb998d218d376c/https%3A//github.com/EnixCoda/Gitako\" rel=\"nofollow\">https://github.com/EnixCoda/Gitako</a>";
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
    version = "1.1.19";
    addonId = "isometric-contributions@jasonlong.me";
    url = "https://addons.mozilla.org/firefox/downloads/file/3916984/github_isometric_contributions-1.1.19.xpi";
    sha256 = "291f52911747d1fe662c7b05dc9fb4d95bf85de3e6760cd2e42ade0cdb334891";
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
    version = "1.7.1";
    addonId = "{eac6e624-97fa-4f28-9d24-c06c9b8aa713}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3991754/material_icons_for_github-1.7.1.xpi";
    sha256 = "c3c091ea5da95e6cc60849422b0f68d983ea3d218a3a1d4b743bd843fb6976dd";
    meta = with lib; {
      homepage = "https://github.com/Claudiohbsantos/github-material-icons-extension";
      description = "Replace the file/folder icons on github file browsers with icons representing the file's type and which tool it is used by.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "npm-hub" = buildFirefoxXpiAddon {
    pname = "npm-hub";
    version = "2017.8.30";
    addonId = "npm-hub@sikelianos.com";
    url = "https://addons.mozilla.org/firefox/downloads/file/712323/npm_hub-2017.8.30.xpi";
    sha256 = "35e616fb2f11a8aedec8b1b3a629fef9e622e59a9e47e3cac6a1d8dfefc90223";
    meta = with lib; {
      homepage = "https://github.com/npmhub/npmhub";
      description = "Explore npm dependencies on GitHub repos";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "octolinker" = buildFirefoxXpiAddon {
    pname = "octolinker";
    version = "6.10.4";
    addonId = "octolinker@stefanbuck.com";
    url = "https://addons.mozilla.org/firefox/downloads/file/3976430/octolinker-6.10.4.xpi";
    sha256 = "140327b54f7a7afef4de8ffe2a741c1a48eb2b8413deabb99d14497b3e594227";
    meta = with lib; {
      homepage = "https://octolinker.vercel.app";
      description = "It turns language-specific module-loading statements like include, require or import into links. Depending on the language it will either redirect you to the referenced file or to an external website like a manual page or another service.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "privacy-badger17" = buildFirefoxXpiAddon {
    pname = "privacy-badger17";
    version = "2021.11.23.1";
    addonId = "jid1-MnnxcxisBPnSXQ@jetpack";
    url = "https://addons.mozilla.org/firefox/downloads/file/3872283/privacy_badger17-2021.11.23.1.xpi";
    sha256 = "50274cd280413bd0e7c4b53d2ef3d019f6a3ce14a7396fed6d248f295ae7f63e";
    meta = with lib; {
      homepage = "https://privacybadger.org/";
      description = "Automatically learns to block invisible trackers.";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  "privacy-pass" = buildFirefoxXpiAddon {
    pname = "privacy-pass";
    version = "3.0.3";
    addonId = "{48748554-4c01-49e8-94af-79662bf34d50}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3962152/privacy_pass-3.0.3.xpi";
    sha256 = "41fbbd038b3fb9b18edf41f8b10c9726ea3108753e3906112ab222afdccb9884";
    meta = with lib; {
      homepage = "https://privacypass.github.io";
      description = "Client support for Privacy Pass anonymous authorization protocol.";
      license = licenses.bsd2;
      platforms = platforms.all;
    };
  };
  "pronoundb" = buildFirefoxXpiAddon {
    pname = "pronoundb";
    version = "0.10.0";
    addonId = "firefox-addon@pronoundb.org";
    url = "https://addons.mozilla.org/firefox/downloads/file/4000981/pronoundb-0.10.0.xpi";
    sha256 = "7af3a69e9d5aad03d5efe2025f5ee53d1d34148d468eecfb3230d0aa117c6552";
    meta = with lib; {
      homepage = "https://pronoundb.org";
      description = "PronounDB is a browser extension that helps people know each other's pronouns easily and instantly. Whether hanging out on a Twitch chat, or on any of the supported platforms, PronounDB will make your life easier.";
      license = licenses.bsd2;
      platforms = platforms.all;
    };
  };
  "reddit-enhancement-suite" = buildFirefoxXpiAddon {
    pname = "reddit-enhancement-suite";
    version = "5.22.10";
    addonId = "jid1-xUfzOsOFlzSOXg@jetpack";
    url = "https://addons.mozilla.org/firefox/downloads/file/3902655/reddit_enhancement_suite-5.22.10.xpi";
    sha256 = "749ecad7db8a9411ab72ea7f5f40b468a084128f2e6ba9446fc1745a2b734045";
    meta = with lib; {
      homepage = "https://redditenhancementsuite.com/";
      description = "Reddit Enhancement Suite (RES) is a suite of tools to enhance your Reddit browsing experience.";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  "refined-github-" = buildFirefoxXpiAddon {
    pname = "refined-github-";
    version = "22.9.15";
    addonId = "{a4c4eda4-fb84-4a84-b4a1-f7c1cbf2a1ad}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4002791/refined_github-22.9.15.xpi";
    sha256 = "97efbe4c9db31485e174c45277e9e5639f265aee8ebdc4c51137d7565db52453";
    meta = with lib; {
      homepage = "https://github.com/sindresorhus/refined-github";
      description = "Simplifies the GitHub interface and adds many useful features.";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "ruffle_rs" = buildFirefoxXpiAddon {
    pname = "ruffle_rs";
    version = "0.1.0.599";
    addonId = "{b5501fd1-7084-45c5-9aa6-567c2fcf5dc6}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4003967/ruffle_rs-0.1.0.599.xpi";
    sha256 = "4641a614631278d3e5ce3afae2ce83dbf51f341973ea238e1057e506159d822f";
    meta = with lib; {
      homepage = "https://ruffle.rs/";
      description = "Puts Flash back on the web where it belongs.\n\nRuffle is an Adobe Flash Player emulator. Ruffle seamlessly plays Flash content on sites you visit. Enjoy your favorite Flash games from yesteryear!";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
  "sourcegraph-for-firefox" = buildFirefoxXpiAddon {
    pname = "sourcegraph-for-firefox";
    version = "22.9.14.1616";
    addonId = "sourcegraph-for-firefox@sourcegraph.com";
    url = "https://addons.mozilla.org/firefox/downloads/file/4002472/sourcegraph_for_firefox-22.9.14.1616.xpi";
    sha256 = "4f33a94308524150e0ec2acb42b449c05c9e40e2c3df414a00269909da2650a8";
    meta = with lib; {
      description = "Adds code intelligence to GitHub, GitLab, Bitbucket Server, and Phabricator: hovers, definitions, references. Supports 20+ languages.";
      platforms = platforms.all;
    };
  };
  "sponsorblock" = buildFirefoxXpiAddon {
    pname = "sponsorblock";
    version = "4.7.1";
    addonId = "sponsorBlocker@ajay.app";
    url = "https://addons.mozilla.org/firefox/downloads/file/3978884/sponsorblock-4.7.1.xpi";
    sha256 = "00f5cbb335d6f40e019f28a8bc00499dc5f1bb9ac6ceb64c128af3a6a0aa0015";
    meta = with lib; {
      homepage = "https://sponsor.ajay.app";
      description = "Easily skip YouTube video sponsors. When you visit a YouTube video, the extension will check the database for reported sponsors and automatically skip known sponsors. You can also report sponsors in videos.\n\nOther browsers: https://sponsor.ajay.app";
      license = licenses.lgpl3;
      platforms = platforms.all;
    };
  };
  "steam-database" = buildFirefoxXpiAddon {
    pname = "steam-database";
    version = "3.6.0";
    addonId = "firefox-extension@steamdb.info";
    url = "https://addons.mozilla.org/firefox/downloads/file/4001340/steam_database-3.6.0.xpi";
    sha256 = "20471181c2ae53df18a4460fbe68623e0a2eb197598fc1cb00d24d60ed094082";
    meta = with lib; {
      homepage = "https://steamdb.info/";
      description = "Adds SteamDB links and new features on the Steam store and community. View lowest game prices and stats.";
      license = licenses.bsd2;
      platforms = platforms.all;
    };
  };
  "styl-us" = buildFirefoxXpiAddon {
    pname = "styl-us";
    version = "1.5.26";
    addonId = "{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3995806/styl_us-1.5.26.xpi";
    sha256 = "b30b14e9c4fa0c8d490d57e6b7d8afe6cc71e2f459b974b5c6fa2bfa32210294";
    meta = with lib; {
      homepage = "https://add0n.com/stylus.html";
      description = "Redesign your favorite websites with Stylus, an actively developed and community driven userstyles manager. Easily install custom themes from popular online repositories, or create, edit, and manage your own personalized CSS stylesheets.";
      license = licenses.gpl3;
      platforms = platforms.all;
    };
  };
  "tridactyl-vim" = buildFirefoxXpiAddon {
    pname = "tridactyl-vim";
    version = "1.22.1";
    addonId = "tridactyl.vim@cmcaine.co.uk";
    url = "https://addons.mozilla.org/firefox/downloads/file/3926466/tridactyl_vim-1.22.1.xpi";
    sha256 = "ed0337dd67516142d1f02a77cab910c7cb95ca575ec1ee4b1f5cf8971918b0f6";
    meta = with lib; {
      homepage = "https://github.com/cmcaine/tridactyl";
      description = "Vim, but in your browser. Replace Firefox's control mechanism with one modelled on Vim.\n\nThis addon is very usable, but is in an early stage of development. We intend to implement the majority of Vimperator's features.";
      platforms = platforms.all;
    };
  };
  "violentmonkey" = buildFirefoxXpiAddon {
    pname = "violentmonkey";
    version = "2.13.1";
    addonId = "{aecec67f-0d10-4fa7-b7c7-609a2db280cf}";
    url = "https://addons.mozilla.org/firefox/downloads/file/4003302/violentmonkey-2.13.1.xpi";
    sha256 = "f6b8e2e5abc885e5ff781f759337866c734e8413bc9d136b9f97e4b4c7b76582";
    meta = with lib; {
      homepage = "https://violentmonkey.github.io/";
      description = "Violentmonkey provides userscripts support for browsers.\nIt's open source! <a rel=\"nofollow\" href=\"https://outgoing.prod.mozaws.net/v1/c8bcebd9a0e76f20c888274e94578ab5957439e46d59a046ff9e1a9ef55c282c/https%3A//github.com/violentmonkey/violentmonkey\">https://github.com/violentmonkey/violentmonkey</a>";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
}