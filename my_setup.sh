#!/bin/bash


################################################################################
# USE AT YOUR OWN RISK - IF YOU CANT READ THE CODE .. DONT USE IT !!           #
# 	Installs 5atchm1n setup based on github repo                           #
#	    https://github.com/5atchm1n/dotfiles                               #
################################################################################

orange=$'\033[0;33m'
lblue=$'\033[1;34m'
blue=$'\033[34m'
green=$'\033[0;32m'
reset=$'\033[0m'

echo "$green Setting up 5atchm1n config $reset"

mkdir ~/my_setup

cd ~/my_setup

echo "$blue Cloning 5atchm1n config repo $reset"

git clone https://github.com/5atchm1n/dotfiles.git 

ls -l

if [ -d "~/.vim/pack/vendor/start/nerdtree"]
then

echo "$blue NERDTree Installed !! $reset"

else

echo "$blue Cloning NERDTree repo $reset"

git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree

echo "$lblue helptags : NERDTree $reset"

vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

fi

if [ -d "~/.vim/pack/vendor/start/Spacegray"]
then

echo "$blue Spacegray Install !! $reset"

else

echo "$blue Cloning Spacegray Theme $reset"

git clone git://github.com/ajh17/Spacegray.vim ~/.vim/pack/vendor/start/Spacegray

fi

echo "$green BASIC SETUP - DONE $reset"

if [ -e ~/.vimrc ]
then

	echo "$orange Backing up current vimrc config $reset"

	mv ~/.vimrc ~/my_setup/.vimrc.bak

fi

echo "$green Adding 5atchm1n .vimrc $reset"

cp ~/my_setup/dotfiles/.vimrc ~/.vimrc

echo "$blue Setting up 5atchm1n .zshrc config $reset"


if [ -e ~/.zshrc ]
then

	echo "$orange Backing up current zshrc config $reset"

	mv ~/.zshrc ~/my_setup/.zshrc.bak

fi

echo "$green Adding 5atchm1n .zshrc $reset"

cp ~/my_setup/dotfiles/.zshrc ~/.zshrc

echo "Trying to create a VIM syntax folder"

if [ -d ~/.vim/syntax ]
then
	echo "$orange Syntax directory already exists ! $reset"
else	
	mkdir -p ~/.vim/syntax
	echo "$green Done ! $reset"
fi

echo "$blue Adding 42 Syntax highlight mod $reset"

if [ -e ~/.vim/syntax/c.vim ]
then
	echo "$orange c.vim exists $reset"
	echo "backing up c.vim"
	mv ~/.vim/syntax/c.vim ~/.vim/syntax/c.vim.bak
	echo "Done.."
	echo "$blue Copying c.vim $reset"
	cp ~/my_setup/dotfiles/c.vim ~/.vim/syntax
	echo "$green Done !"
else
	
	echo "$blue Copying c.vim $reset"
	cp ~/my_setup/dotfiles/c.vim ~/.vim/syntax
	echo "$green Done !"
fi

echo "$green SETUP COMPLETED $reset"
echo "$blue ENJOY $reset $green  =] $reset"
