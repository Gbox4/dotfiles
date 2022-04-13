cd ~/.config

cp -r autorandr ~/repos/dotfiles/.config
cp -r bspwm ~/repos/dotfiles/.config
cp -r kitty ~/repos/dotfiles/.config
cp -r mpd ~/repos/dotfiles/.config
cp -r nvim ~/repos/dotfiles/.config
cp -r organize ~/repos/dotfiles/.config
cp -r picom.conf ~/repos/dotfiles/.config
cp -r polybar ~/repos/dotfiles/.config
cp -r ranger ~/repos/dotfiles/.config
cp -r rofi ~/repos/dotfiles/.config
cp -r sxhkd ~/repos/dotfiles/.config
cp -r thefuck ~/repos/dotfiles/.config
cp -r touchegg ~/repos/dotfiles/.config

cd ~
cp -r .colors ~/repos/dotfiles
cp -r .Xauthority ~/repos/dotfiles
cp -r .xbindkeysrc ~/repos/dotfiles
cp -r .xinitrc ~/repos/dotfiles
cp -r .Xresources ~/repos/dotfiles
cp -r .zshrc ~/repos/dotfiles
cp -r .zshrc.simple ~/repos/dotfiles

cd ~/bin

cp -r album-dl ~/repos/dotfiles/bin
cp -r backlight ~/repos/dotfiles/bin
cp -r booksplit ~/repos/dotfiles/bin
cp -r changecolor ~/repos/dotfiles/bin
cp -r gmtz ~/repos/dotfiles/bin
cp -r kbltoggle ~/repos/dotfiles/bin
cp -r mass-rename ~/repos/dotfiles/bin
cp -r push_aur.sh ~/repos/dotfiles/bin
cp -r pyrtag ~/repos/dotfiles/bin
cp -r rtag ~/repos/dotfiles/bin
cp -r startup ~/repos/dotfiles/bin
cp -r update_pypi.sh ~/repos/dotfiles/bin
cp -r updatescount ~/repos/dotfiles/bin

cd ~/repos/dotfiles
git add -A
git commit -m "script dotfiles update"
