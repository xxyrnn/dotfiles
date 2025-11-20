#
# ~/.zshrc
#

# Source options
if [ -f ~/.zsh_options ]; then
	. ~/.zsh_options
fi

zstyle :compinstall filename '$HOME/.zshrc'

# Source the file containing the LS_COLORS variable
if [ -f ~/.dircolors ]; then
    . ~/.dircolors
fi

zstyle ":completion:*" list-colors ${(s.:.)LS_COLORS}
autoload -Uz compinit && compinit

# Shell prompt
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

# Better suggestions for dashed options and command history
# WARNING: sometimes it makes the shell lag
#if [ -f $(locate zsh-autocomplete.plugin.zsh) ]; then
#    . $(locate zsh-autocomplete.plugin.zsh)
#fi
# Restore the traditional zsh completion when pressing <TAB>
#bindkey "^I" menu-complete
