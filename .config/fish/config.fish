################################
## ~/.config/fish/config.fish ##
################################

## if not interactive, do nothing
if not status is-interactive
    return
end

## environment variables
if test -f ~/.config/fish/conf.d/environment.fish
    . ~/.config/fish/conf.d/environment.fish
end

## aliases
if test -f ~/.config/fish/conf.d/aliases.fish
    . ~/.config/fish/conf.d/aliases.fish
end

## info like fastfetch but shorter
pfetch

## prompt
## comment out if you prefer the default prompt
starship init fish | source
