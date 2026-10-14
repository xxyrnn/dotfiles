############################################
## ~/.config/fish/conf.d/environment.fish ##
############################################

## ~/.config directory
set -gx XDG_CONFIG_HOME "$HOME/.config"

## default editor
## change this to your preferred editor
## other commonly used editors are: nano, vim, nvim
set -gx EDITOR micro

## default locale for some programs (e.g PERL)
## change this to your preferred locale
set -gx LC_ALL "en_US.UTF-8"

## golang path for packages and binaries
set -gx GOPATH "$HOME/go"

## add $HOME/.local/bin to the system path
set -gx PATH "$PATH:$HOME/.local/bin"

## add $GOPATH/bin to the system path
set -gx PATH "$PATH:$GOPATH/bin"

## uncomment this when using TOR to proxify every interactive shell you open
## WARNING: if this is left uncommented while TOR is not running, you will not
## be able to access the internet from interactive shells
# set -gx ALL_PROXY "socks5://127.0.0.1:9050"

## use custom themes in micro
set -gx MICRO_TRUECOLOR 1

## idk
set -gx LESS -R

## idk
umask 022
