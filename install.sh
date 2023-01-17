#!/bin/sh

CURRENT_DIRECTORY=$(pwd)

# init scripts
[ -f $HOME/.xinitrc ] && mv $HOME/.xinitrc $HOME/.xinitrc.bak
ln -s $CURRENT_DIRECTORY/xinitrc $HOME/.xinitrc

[ -f $HOME/.zprofile ] && mv $HOME/.zprofile $HOME/.zprofile.bak
ln -s $CURRENT_DIRECTORY/zprofile $HOME/.zprofile

[ -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.bak
ln -s $CURRENT_DIRECTORY/zshrc $HOME/.zshrc

[ -f $HOME/.personal_zshrc ] && rm $HOME/.personal_zshrc
[ -f $CURRENT_DIRECTORY/personal-rc-files/personal_zshrc ] && ln -s $CURRENT_DIRECTORY/personal-rc-files/personal_zshrc $HOME/.personal_zshrc



# configs
[ -L $HOME/.config/alacritty ] && rm $HOME/.config/alacritty
[ -d $HOME/.config/alacritty ] && mv $HOME/.config/alacritty $HOME/.config/alacritty.bak
ln -s $CURRENT_DIRECTORY/config/alacritty $HOME/.config/alacritty

[ -L $HOME/.config/i3 ] && rm $HOME/.config/i3
[ -d $HOME/.config/i3 ] && mv $HOME/.config/i3 $HOME/.config/i3.bak
ln -s $CURRENT_DIRECTORY/config/i3 $HOME/.config/i3

[ -L $HOME/.config/nvim ] && rm $HOME/.config/nvim
[ -d $HOME/.config/nvim ] && mv $HOME/.config/nvim $HOME/.config/nvim.bak
ln -s $CURRENT_DIRECTORY/config/nvim $HOME/.config/nvim

[ -L $HOME/.config/tmux ] && rm $HOME/.config/tmux
[ -d $HOME/.config/tmux ] && mv $HOME/.config/tmux $HOME/.config/tmux.bak
ln -s $CURRENT_DIRECTORY/config/tmux $HOME/.config/tmux

[ -L $HOME/.config/polybar ] && rm $HOME/.config/polybar
[ -d $HOME/.config/polybar ] && mv $HOME/.config/polybar $HOME/.config/polybar.bak
ln -s $CURRENT_DIRECTORY/config/polybar $HOME/.config/polybar

[ -L $HOME/.config/dunst ] && rm $HOME/.config/dunst
[ -d $HOME/.config/dunst ] && mv $HOME/.config/dunst $HOME/.config/dunst.bak
ln -s $CURRENT_DIRECTORY/config/dunst $HOME/.config/dunst

[ -L $HOME/.config/kitty ] && rm $HOME/.config/kitty
[ -d $HOME/.config/kitty ] && mv $HOME/.config/kitty $HOME/.config/kitty.bak
ln -s $CURRENT_DIRECTORY/config/kitty $HOME/.config/kitty

[ -f $HOME/.tmux.conf ] && rm $HOME/.tmux.conf
[ -f $CURRENT_DIRECTORY/config/tmux/tmux.conf ] && ln -s $CURRENT_DIRECTORY/config/tmux/tmux.conf $HOME/.tmux.conf

[ -L $HOME/.config/powerline/themes/tmux/default.json ] && rm $HOME/.config/powerline/themes/tmux/default.json
[ -d $HOME/.config/powerline/themes/tmux/default.json ] && mv $HOME/.config/powerline/themes/tmux/default.json $HOME/.config/themes/tmux/default.json.bak
ln -s $CURRENT_DIRECTORY/config/powerline $HOME/.config/powerline

export PATH=$PATH:$CURRENT_DIRECTORY/bin
