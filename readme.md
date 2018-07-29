# dotfiles

A collection of system settings.

1. install OSX High Sierra normally on a formatted machine from USB [link](https://support.apple.com/en-ca/HT201372#download)
    1. Connect the bootable installer to a compatible Mac. 
    1. Use Startup Manager or Startup Disk preferences to select the bootable installer as the startup disk, then start up from it. Your Mac will start up to macOS Recovery. 
    1. Choose your language, if prompted.
    1. A bootable installer doesn't download macOS from the Internet, but it does require the Internet to get information specific to your Mac model, such as firmware updates. If you need to connect to a Wi-Fi network, use the Wi-Fi menu  in the menu bar. 
    1. Select Install macOS (or Install OS X) from the Utilities window, then click Continue and follow the onscreen instructions.
1. when you "Create a Computer Account" account name = `paul`
1. create `Users/paul/dev/` and `Users/paul/dev/bin` and `Users/paul/dev/src`
1. setup git ssh keys [link](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
1. login to icloud *and* apple store's purchased tab (enables `mas` command)
1. run `git --version` to install xcode using a prompt ~takes ~5-10 mins
1. clone this repo into `Users/paul/dev/src` - it will prompt to install development tools (`git`/`clang`)
1. run `setup.sh`, you will be prompted to enter your password multiple times
1. type `exit` (to exit a shell within a shell)
