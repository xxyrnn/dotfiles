#
# ~/.zshrc
#

# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS}

autoload -Uz compinit && compinit
# End of lines added by compinstall

PROMPT="[ %B%F{cyan}%n%f@%F{cyan}%m%f%b %F{yellow}%~%f ]"$'\n'"%# "

# Aliases
if [ -f ~/.zsh_aliases ]; then
	. ~/.zsh_aliases
fi

# Syntax highlighting
if [ -f $(locate zsh-syntax-highlighting.zsh) ]; then
    . $(locate zsh-syntax-highlighting.zsh)
fi

# Command suggestions
if [ -f $(locate zsh-autosuggestions.zsh) ]; then
    . $(locate zsh-autosuggestions.zsh)
fi
