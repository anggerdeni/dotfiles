#!/bin/sh

CURRENT_DIRECTORY=$(pwd)

echo 'export PATH=$PATH:$CURRENT_DIRECTORY/bin' >> ~/.zshrc

[ -f $HOME/.xinitrc ] && mv $HOME/.xinitrc $HOME/.xinitrc.bak
ln -s $CURRENT_DIRECTORY/xinitrc ~/.xinitrc

[ -f $HOME/.xinitrc ] && mv $HOME/.zshenv $HOME/.zshenv.bak
ln -s $CURRENT_DIRECTORY/zshenv ~/.zshenv

[ -f $HOME/.xinitrc ] && mv $HOME/.zprofile $HOME/.zprofile.bak
ln -s $CURRENT_DIRECTORY/zprofile ~/.zprofile