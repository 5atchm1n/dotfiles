# BASIC SETUP

### pre-requisites

*UNIX like OS*

*zsh -- 5.0.8 and newer --* [INSTALL ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

*VIM 8+*

These are the basic packages/plugins you need in order to make best use of my dotfiles !!

https://github.com/ohmyzsh/ohmyzsh  

https://github.com/preservim/nerdtree

https://github.com/ajh17/Spacegray.vim

*you can full custom your setup by reading all that doc and the [VIM DOC](https://www.vim.org/docs.php)*

Or just trust me and run the following commands  -- **at your own risk** *xD* 

## Basic Setup for Vim and ZSH
installs ohmyzsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
installs NERDTREE -- file browser for your VIM
```
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
```
installs Spacegray - VIM theme
```
git clone git://github.com/ajh17/Spacegray.vim ~/.vim/pack/vendor/start/Spacegray
```
# VIM and OH-MY-ZSH config files

**each file is commented so you get what each command does !!**

**.vimrc** is my configuration file for VIM

the first block of settings are globally accepted as being "the best" -- the rest is just my personal taste
feel free to read google and find more stuff you like.

**.zshrc** is the aliases and settings I like to use for OH-MY-ZSH *go to the end of the doc*
so i can get to different files or folders quickly or commands i feel i type all the time

*this last one is probably not necessary but I think its cool af*

**c.vim** is a syntax file needs to be locate in this path place in this directory (**mkdir** if it doesnt exist!!) **~/.vim/syntax/c.vim**

to highlight struct types according to the norm of Ecole 42 **this file could definately be made to highlight the f_ format that we use for functions** I havent done it because i am still coding the libft :P but definitely will do it as soon as libft is *set as finish* !! 

At some point I should make a script to install and add all this stuff - probably when 42 re-opens :) --*maybe you can do it*
