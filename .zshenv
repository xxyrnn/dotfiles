## Add $HOME/.local/bin to the system path
export PATH="$HOME/.local/bin:$PATH"

## Change this to the editor you prefer
## Other commonly used editors: nano, micro, vim, vi, emacs
export EDITOR="nvim"

## Uncomment this when using TOR to proxify every interactive shell you open
## WARNING: if this is left uncommented and TOR is not running, you will not
## be able to access the internet from interactive shells
# export ALL_PROXY="socks5://127.0.0.1:9050"

## use custom themes in micro
export MICRO_TRUECOLOR=1

## zsh env variables
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
