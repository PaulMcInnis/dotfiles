# .files

A collection of system settings for `Ubuntu 20.04`.

## Installation

After installing OS, install this stuff:

#### Snap

Applications to install for system via `snap`:

* `Calendar`
* `Zoom`
* `Spotify`
* `Chromium`
* `Gimp`
* `Sublime Merge`

#### Repositories

Repos to clone into `~`:

* `Better-Release-Radar`
  * `NOTE:` don't forget to set `env` vars for `spotipy` in `.bashrc`

#### VSCode Extensions

Extensions to install for `VSCode`:

* `Indenticator`
* `Python`
* `Custom Window Zoom`
* `Monokai ST3`
* `Docker`

## Post Installation

* Install JetBrains Mono font [link](https://www.jetbrains.com/lp/mono/)
  * set in VSCode
* `cat add_to_bashrc.txt >> ~/.bashrc`
* install GNOME terminal preferences `gterminal.preferences`
* Login to `settings` -> `online-accounts` 
* Fix Spotify HiDPi zoom issue [link](https://community.spotify.com/t5/Desktop-Linux/Spotify-Hi-DPI-Fix-for-Snap-install/td-p/4576328)
* Completely remove firefox [link](https://askubuntu.com/questions/16758/removing-firefox-in-ubuntu-with-all-add-ons-like-it-never-existed)
* Disable super + keybindings ('dash to dock') with `dconf-editor`  [link](https://askubuntu.com/questions/968103/disable-the-default-app-key-supernum-functionality-on-ubuntu-17-10-and-later/1137705#1137705)
* Set Monitor to `144.0` Hz via displays
  * Need to use DisplayPort
  * verify with `xrandr`
* Set Digital Outputs as default for all audio devices
  * need to fix the usb audio volumes or it cuts out below 40% volume: [link](https://chrisjean.com/fix-for-usb-audio-is-too-loud-and-mutes-at-low-volume-in-ubuntu/)

## Todo

- [ ] automate!
- [ ] add .bashrc
