###############
## ~/.bashrc ##
###############

## if not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \w]\$ '

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
