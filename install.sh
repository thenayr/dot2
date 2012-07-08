#!/usr/bin/env bash

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.zshrc
rm ~/.vim
rm ~/.gvimrc
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.tmux.conf

echo "Symlinking files"
ln -s ~/dot2/vimrc ~/.vimrc
ln -s ~/dot2/vim ~/.vim
ln -s ~/dot2/gitconfig ~/.gitconfig
ln -s ~/dot2/tmux ~/.tmux.conf
ln -s ~/dot2/bash_profile ~/.bash_profile

echo "All done."
