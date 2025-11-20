#
# ~/.zshrc
#

# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

if [ -f ~/.dircolors ]; then
    . ~/.dircolors
fi

zstyle ":completion:*" list-colors ${(s.:.)LS_COLORS}

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

# Better dashed-options and command history suggestions
if [ -f $(locate zsh-autocomplete.plugin.zsh) ]; then
    . $(locate zsh-autocomplete.plugin.zsh)
fi
# Restore the traditional zsh completion when pressing <TAB>
bindkey "^I" menu-complete
