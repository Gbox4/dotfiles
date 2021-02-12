#
# ~/.bashrc
#

(cat ~/.cache/wal/sequences &)
# If not running interactively, don't do anything

export SPOTIPY_CLIENT_ID=e7dcc7eef6ad4ea18f3fdc933aad5ff3
export SPOTIPY_CLIENT_SECRET=dac370ea7c534a13ac3a73a7c15e8396
export YOUTUBE_DEV_KEY=AIzaSyAGkKh9bipeNYO_RoYxFj5xbmgGJwR8q14

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
