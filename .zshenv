#####################
## path: ~/.zshenv ##
## author: xxyrnn  ##
#####################

## .config directory
export XDG_CONFIG_HOME="$HOME/.config"

## change this to your preferred editor
## other commonly used editors are nano, vim, nvim
export EDITOR="micro"

## default locale for some programs (e.g. PERL)
## change this to your preferred locale
export LC_ALL="en_US.UTF-8"

## golang path for packages and binaries
export GOPATH="$HOME/go"

## uncomment this when using TOR to proxify every interactive shell you open
## WARNING: if this is left uncommented and TOR is not running, you will not
## be able to access the internet from interactive shells
# export ALL_PROXY="socks5://127.0.0.1:9050"

## use custom themes in micro
export MICRO_TRUECOLOR=1

export LESS="-R"

umask 022
