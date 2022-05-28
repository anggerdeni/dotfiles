#!/bin/sh

CURRENT_DIRECTORY=$(pwd)

echo 'export PATH=$PATH:$CURRENT_DIRECTORY/bin' >> ~/.zshrc

# init scripts
[ -f $HOME/.xinitrc ] && mv $HOME/.xinitrc $HOME/.xinitrc.bak
ln -s $CURRENT_DIRECTORY/xinitrc $HOME/.xinitrc

[ -f $HOME/.zshenv ] && mv $HOME/.zshenv $HOME/.zshenv.bak
ln -s $CURRENT_DIRECTORY/zshenv $HOME/.zshenv

[ -f $CURRENT_DIRECTORY/personal-rc-files/personal_zshrc ] && ln -s $CURRENT_DIRECTORY/personal-rc-files/personal_zshrc $HOME/.personal_zshrc



# configs
[ -d $HOME/.config/alacritty ] && mv $HOME/.config/alacritty $HOME/.config/alacritty.bak
ln -s $CURRENT_DIRECTORY/config/alacritty $HOME/.config/alacritty

[ -d $HOME/.config/i3 ] && mv $HOME/.config/i3 $HOME/.config/i3.bak
ln -s $CURRENT_DIRECTORY/config/i3 $HOME/.config/i3

[ -d $HOME/.config/nvim ] && mv $HOME/.config/nvim $HOME/.config/nvim.bak
ln -s $CURRENT_DIRECTORY/config/nvim $HOME/.config/nvim

[ -d $HOME/.config/tmux ] && mv $HOME/.config/tmux $HOME/.config/tmux.bak
ln -s $CURRENT_DIRECTORY/config/tmux $HOME/.config/tmux