#
# ~/.bashrc
#

#(cat ~/.cache/wal/sequences &)
# If not running interactively, don't do anything

export EDITOR="/usr/bin/nvim"
export PATH=$PATH:~/.local/bin:~/bin
source ~/.apis

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
alias key='xbindkeys --key'
alias ev='nvim ~/.config/nvim/init.vim'

see() {
	mupdf $1 & disown
}

hr() {
	if [ $1 -gt 1 ]
	then
		s="$(history | egrep "^\W*$1\W")"
		${s/$1}
	fi
}

out() {
        "$@" & disown
}

spdl() {
	spotify_dl -l $1 -o ~/music
}

fortune | cowsay | lolcat
echo
PS1='[\u@\h \W]\$ '
