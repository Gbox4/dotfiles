#
# ~/.bashrc
#

(cat ~/.cache/wal/sequences &)
# If not running interactively, don't do anything
fortune | cowsay | lolcat
echo

[[ $- != *i* ]] && return

eval $(thefuck --alias)

alias ls='ls --color=auto'
alias ll='ls -la'
alias lr='ls -ltr'
alias ep='nvim ~/.bashrc'
alias sp='source ~/.bashrc'
alias hs='history | grep -i'
alias pacs='pacman -Qe | grep -i'
alias seba='source env/bin/activate'
alias see="mupdf"

hr() {
	if [ $1 -gt 1 ]
	then
		s="$(history | egrep "^\W*$1\W")"
		${s/$1}
	fi
}

PS1='[\u@\h \W]\$ '
