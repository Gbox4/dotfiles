# Sick programs:
# Zeal - offline docs
# ncdu - ncurses du
# radarr - run 'sudo systemctl start radarr' then access http://localhost:7878
# bazarr - run 'sudo systemctl start bazarr' then access http://redbook:6767/
# spotdl - spotdl --path-template '{album}/{title}.{ext}' <spotify URL>
# access to encrypted files: run ecryptfs-mount-private and ecryptfs-umount-private 
# jellyfin - use systemctl to start jellyfin for the media server


if [ -z $SCRIPTCALL ]; then
	fortune -a | cowsay | lolcat
	echo
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

if [ $TERM = linux ]
then
  ZSH_THEME="robbyrussell"
else
  ZSH_THEME="powerlevel10k/powerlevel10k"
fi

plugins=(git colored-man-pages colorize heroku zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source ~/.envvars

export EDITOR="/usr/bin/nvim"
export PATH=$PATH:~/.local/bin:~/bin
eval $(thefuck --alias)

bindkey -s '^O' 'ranger^M'

# unalias l
# alias ls='exa'
# alias ll='exa --long --header --icons --git'
# alias la='exa --long --header --icons --git --all'
# alias lr='exa --reverse --sort=time'
# alias lar='exa -la --sort=modified'

alias windows='sudo grub-reboot Windows && sudo reboot'

alias t='tree'
alias c='clear'

alias ep='nvim ~/.zshrc'
alias epx='nvim ~/.xinitrc'
alias epv='nvim ~/.config/nvim/init.vim'

alias sshi='ssh -i ~/documents/gabe.pem'
alias scpi='scp -i ~/documents/gabe.pem'

alias pacs='sudo pacman -S'
alias pacq='pacman -Qe | grep -i'

alias seba='source env/bin/activate'
alias key='xbindkeys --key'
alias wttr='curl wttr.in'
alias wttrs='curl "wttr.in/?0"'

alias mu='sudo mount /dev/sda1 /mnt'
alias umu='sudo umount /mnt'

alias hs='history | grep -i'
alias ytdl='youtube-dl -x --audio-format mp3 --audio-quality 0 -o "%(autonumber)s %(title)s.%(ext)s"'
alias please='sudo $(fc -ln -1)'
#alias update-front="ssh hooks@chordhosting.com './buildhook'"

alias en='sudo systemctl enable --now'
alias dis='sudo systemctl disable'
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'

#alias radarr='sudo systemctl start radarr'
#alias lidarr='sudo systemctl start lidarr'
#alias ccolor='kitty @ set-colors ~/.config/kitty/default_colors.conf'
alias gtree='git log --oneline --decorate --all --graph'

alias pics='cd ~/pics'
alias scrot='cd ~/pics/screenshots'
alias down='cd ~/downloads'
alias doc='cd ~/documents'
alias gbanks='cd ~/gbanks'
rp() {cd ~/repos/$1}
cfg() {cd ~/.config/$1}
op() {nvim ~/repos/$1}

myip() {ip addr | grep "inet " | grep -v " 127." | awk '{print $2}'}

see() {feh $1 & disown}

spdl() {spotify_dl -l $1 -o ~/music}

out() {"$@" & disown}

banner() {echo $1 | figlet -f 3d -c -t | lolcat -a -d 2}
alias stfu="banner 'Shut\nthe\nfuck\nup'"



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
