#!/bin/zsh

export dfiles="$HOME/dev/src/dotfiles"

# Install Homebrew if necessary.
(( $+commands[brew] ))
if [ $? -ne 0 ]; then
    echo "Installing Homebrew."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install packages and apps.
brew bundle --file="$dfiles/macos/Brewfile"

# Symlink the git configuration file.
gln -sf "$dfiles/macos/git/.gitconfig" ~
gln -sf "$dfiles/macos/git/.gitignore" ~

# Symlink the ssh configuration file.
mkdir -p "$HOME/.ssh"
gln -sf "$dfiles/macos/ssh/config" "$HOME/.ssh"

# Symlink the settings for atom.
atom_src="$dfiles/macos/atom"
atom_dest="$HOME/.atom"
mkdir $atom_dest
gln -sf "$atom_src/.gitignore" $atom_dest
gln -sf "$atom_src/config.cson" $atom_dest
gln -sf "$atom_src/init.coffee" $atom_dest
gln -sf "$atom_src/keymap.cson" $atom_dest
gln -sf "$atom_src/snippets.cson" $atom_dest
gln -sf "$atom_src/styles.less" $atom_dest
# Install atom packages.
echo "Note: Atom packages are not tracked automatically."
echo "Update the packages list using:"
echo "apm list --installed --bare | grep '^[^@]\+' -o > $atom_src/packages.txt"
apm install --packages-file "$atom_src/packages.txt"

# Symlink the settings for sublime text.
subl_src="$dfiles/macos/sublime"
subl_dest="$HOME/Library/Application Support/Sublime Text 3/Packages"
mkdir -p "$subl_dest/Language"
mkdir -p "$subl_dest/User"
cp "$subl_src/en_CA.aff" "$subl_dest/Language"
cp "$subl_src/en_CA.dic" "$subl_dest/Language"
gln -sf "$subl_src/Preferences.sublime-settings" "$subl_dest/User"
gln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "$HOME/dev/bin"

# Configure iterm2.
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$dfiles/macos/iterm"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Install oh my zsh if not installed.
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh my zsh."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Symlink the zsh theme.
theme="$dfiles/macos/omz/paul.zsh-theme"
theme_path="$HOME/.oh-my-zsh/custom/themes"
mkdir -p $theme_path
gln -sf $theme $theme_path

# Symlink the zshrc file.
gln -sf $dfiles/macos/omz/zshrc.sh $HOME/.zshrc
