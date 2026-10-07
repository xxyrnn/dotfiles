####################
## path: ~/.zshrc ##
## author: xxyrnn ##
####################

## creates a color dictionary to use in the prompt
autoload -U colors && colors

## shell prompt
# PS1="%B%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}%b %{$fg[yellow]%}%~%{$reset_color%}"$'\n'"%#> "
eval "$(starship init zsh)"

## shell options
if [ -f ~/.zsh_options ]; then
	. ~/.zsh_options
fi

## zsh history configuration
export HISTFILE=~/.zhistory
export HISTSIZE=10000
export SAVEHIST=10000

## shell completions
autoload -U compinit

zstyle :compinstall filename "~/.zcompdump"
zstyle ":completion:*" list-colors ${(s.:.)LS_COLORS}
zstyle ":completion:*" menu select

zmodload zsh/complist

compinit
_comp_options+=(globdots)

## export the LS_COLORS variable for `ls` auto coloring
if [ -f ~/.dircolors ]; then
    . ~/.dircolors
fi

## aliases
if [ -f ~/.zsh_aliases ]; then
	. ~/.zsh_aliases
fi

## highlights shell syntax
if [ -f /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]; then
    . /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fi

## suggests commands using shell history
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
