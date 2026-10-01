############
# ~/.zshrc #
############

## Source options
if [ -f ~/.zsh_options ]; then
	. ~/.zsh_options
fi

zstyle :compinstall filename '$HOME/.zshrc'

## Source the file containing the LS_COLORS variable
if [ -f ~/.dircolors ]; then
    . ~/.dircolors
fi

zstyle ":completion:*" list-colors ${(s.:.)LS_COLORS}
autoload -Uz compinit && compinit

## Shell prompt
# PROMPT="%B%F{cyan}%n%f@%F{cyan}%m%f%b %F{yellow}%~%f"$'\n'"%#> "
eval "$(starship init zsh)"

## Aliases
if [ -f ~/.zsh_aliases ]; then
	. ~/.zsh_aliases
fi

## Syntax highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

## Command suggestions
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
