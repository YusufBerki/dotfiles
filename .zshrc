### ZSH Settings

# Path to oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# THEME
ZSH_THEME="spaceship"

# Plugins
plugins=(
    vi-mode
)

MODE_INDICATOR="%F{yellow}+%f"

source $ZSH/oh-my-zsh.sh


# Python
export VIRTUALENVWRAPPER_PYTHON=python3.9
export WORKON_HOME=~/.virtualenvs
source /opt/homebrew/bin/virtualenvwrapper.sh

# OS
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Load aliases
if [[ -f "$HOME/workspace/dotfiles/zsh_aliases.inc" ]]; then
    source "$HOME/workspace/dotfiles/zsh_aliases.inc"
else
    echo >&2 "WARNING: can't load shell aliases"
fi


