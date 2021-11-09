# .files

A collection of system settings for `Ubuntu 20.04`.

## Installation

After installing OS, install this stuff:

#### Apt

* `spotify`
* `pavucontrol`

#### Snap

Applications to install for system via `snap`:

* `Calendar`
* `Zoom`
* `Chromium`
* `Gimp`
* `Sublime Merge`
* `Docker`

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
* `Pylance`
* `Remote - Containers`
* `Snippet Generator`
* `TSLint`

## Post Installation

* Install JetBrains Mono font [link](https://www.jetbrains.com/lp/mono/)
  * set in VSCode
* `cat add_to_bashrc.txt >> ~/.bashrc`
* install GNOME terminal preferences `gterminal.preferences`
* install Postman
* Login to `settings` -> `online-accounts` 
* Fix Spotify HiDPi fix [link](https://community.spotify.com/t5/Desktop-Linux/Spotify-Hi-DPI-Fix-for-Snap-install/td-p/4576328)
* Completely remove firefox [link](https://askubuntu.com/questions/16758/removing-firefox-in-ubuntu-with-all-add-ons-like-it-never-existed)
* Disable super + keybindings ('dash to dock') with `dconf-editor`  [link](https://askubuntu.com/questions/968103/disable-the-default-app-key-supernum-functionality-on-ubuntu-17-10-and-later/1137705#1137705)
* Set Monitor to `144.0` Hz via displays
  * Need to use DisplayPort 1.4 cable
  * verify with `xrandr`
* Set Digital Outputs as default for all audio devices via `pavucontrol`
  * need to fix the USB audio volumes or it cuts out below 40% volume: [link](https://chrisjean.com/fix-for-usb-audio-is-too-loud-and-mutes-at-low-volume-in-ubuntu/)
* Install `nvidia-docker2` [link](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#install-guide)
* Make external display primary for login: [link](https://askubuntu.com/questions/1043337/is-there-to-make-the-login-screen-appear-on-the-external-display-in-18-04)
* Fix issue with spotify HiDPI: `sudo nano /usr/share/applications/spotify.desktop` and update the line:  `Exec=spotify --force-device-scale-factor=1.5 %U`

## Todo

- [ ] automate!
- [ ] collapse help links into readme to prevent losing them
