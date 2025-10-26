# env
[[ -f ~/.zshenv ]] && . ~/.zshenv

# options
[[ -f ~/.zsh_options ]] && . ~/.zsh_options

# completion
autoload -Uz compinit && compinit

zstyle :compinstall filename '$HOME/.zshrc'
zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS}

# prompt
PS1="%B%F{cyan}%n%f@%F{cyan}%m%f%b - %F{yellow}%t%f | %F{green}%~%f"$'\n'"%# "

# basic aliases
alias ls='ls --color'
alias grep='grep --color'
alias ip='ip -c'

# custom aliases
if [ -f ~/.zsh_aliases ]; then
	. ~/.zsh_aliases
fi

# plugins
# syntax highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# autosuggestions
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# autocomplete
# if [ -f /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]; then
# 	source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# fi
