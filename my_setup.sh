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

# Clone repo to home directory

echo "$green Setting up 5atchm1n config $reset"

mkdir ~/my_setup

cd ~/my_setup

echo "$blue Cloning 5atchm1n config repo $reset"

git clone https://github.com/5atchm1n/dotfiles.git 

ls -l

# install packages

echo "$blue Add missing packages $reset"

echo "$blue update repositories $reset"
sudo apt-get update && sudo apt-get upgrade -y

echo "$blue Installing missing packages $reset"

echo "$blue Installing vim git zsh curl $reset"
sudo apt-get install -y vim git zsh curl

echo "$blue Installing clang make $reset"
sudo apt-get install -y clang make

echo "$blue Installing readline $reset"
sudo apt-get install -y libreadline-dev

echo "$blue Installing cub3D packages $reset"
sudo apt-get install -y xorg libxext-dev zlibb1g-dev

echo "$blue Installing additional man pages $reset"
sudo apt-get install -y libbsd-dev

echo "$orange Remove unattended upgrades"
sudo apt remove unattended-upgrades

# install OHMYZSH

echo "$blue installing ohmyzsh $reset"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup GIT

echo "$blue setup git $reset"

git config --global user.name "$USER"

echo "$lblue enter email for git $reset"

read varname

git config --global user.email $varname

echo "$blue set vim as git core editor $reset"

git config --global core.editor vim

# SETUP VIM - NERDTREE

if [ [ -d "~/.vim/pack/vendor/start/nerdtree" ] ]
then

echo "$blue NERDTree Installed !! $reset"

else

echo "$blue Cloning NERDTree repo $reset"

git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree

echo "$lblue helptags : NERDTree $reset"

vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

fi

# SETUP VIM - SPACEGRAY THEME

if [ [ -d "~/.vim/pack/vendor/start/Spacegray" ] ]

then

echo "$blue Spacegray Install !! $reset"

else

echo "$blue Cloning Spacegray Theme $reset"

git clone https://github.com/ackyshake/Spacegray.vim.git ~/.vim/pack/vendor/start/Spacegray

fi

echo "$green BASIC SETUP - DONE $reset"

# SETUP VIMRC

if [ [ -e ~/.vimrc ] ]
then

	echo "$orange Backing up current vimrc config $reset"

	mv ~/.vimrc ~/my_setup/.vimrc.bak

	echo "$orange backed to ~/my_setup $reset"
fi

echo "$green Adding 5atchm1n .vimrc $reset"

cp ~/my_setup/dotfiles/srcs/.vimrc ~/.vimrc

# SETUP VIM SYNTAX FILE

if [ [ -d ~/.vim/syntax ] ]
then
	echo "$orange Syntax directory already exists ! $reset"
else	
	mkdir -p ~/.vim/syntax
	echo "$green Done ! $reset"
fi

echo "$blue Adding 42 Syntax highlight mod $reset"

if [ [ -e ~/.vim/syntax/c.vim ] ]
then
	echo "$orange c.vim exists $reset"
	echo "backing up c.vim"
	mv ~/.vim/syntax/c.vim ~/.vim/syntax/c.vim.bak
	echo "Done.."
	echo "$blue Copying c.vim $reset"
	cp ~/my_setup/dotfiles/srcs/c.vim ~/.vim/syntax
	echo "$green Done !"
else
	
	echo "$blue Copying c.vim $reset"
	cp ~/my_setup/dotfiles/srcs/c.vim ~/.vim/syntax
	echo "$green Done !"
fi

echo "$green SETUP COMPLETED $reset"
echo "$orange check ~/my_setup for backups $reset"
echo "$orange you can rm ~/my_setup $reset"
echo "$blue ENJOY $reset $green  =] $reset"
