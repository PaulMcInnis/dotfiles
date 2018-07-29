# oh-my-zsh configuration.

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="paul"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="false"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Environment variables.

# Path
export PATH="$PATH:$HOME/dev/bin"

# Use Canadian English.
export LANG='en_CA.UTF-8'
export LC_ALL='en_CA.UTF-8'

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# Aliases.

alias ls="gls -ACF --color=always --group-directories-first"
alias pip3="python3 -m pip"
alias venv3="python3 -m venv"
