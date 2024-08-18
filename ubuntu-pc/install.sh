#!/bin/sh

CURRENT_DIRECTORY=$(pwd)

[ -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.bak
ln -s $CURRENT_DIRECTORY/zshrc $HOME/.zshrc

[ -f $HOME/.personal_zshrc ] && rm $HOME/.personal_zshrc
[ -f $CURRENT_DIRECTORY/personal-rc-files/personal_zshrc ] && ln -s $CURRENT_DIRECTORY/personal-rc-files/personal_zshrc $HOME/.personal_zshrc

# configs

for config in i3 polybar nvim tmux kitty dunst
do
	[ -L $HOME/.config/$config ] && rm $HOME/.config/$config
	[ -d $HOME/.config/$config ] && rm -r $HOME/.config/$config # maybe dangerous but whatever
	ln -s $CURRENT_DIRECTORY/config/$config $HOME/.config/$config
done

export PATH=$PATH:$CURRENT_DIRECTORY/bin
