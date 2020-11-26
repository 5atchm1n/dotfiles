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
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
installs ohmyzsh
```
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
```
installs NERDTREE -- file browser for your VIM
```
git clone git://github.com/ajh17/Spacegray.vim ~/.vim/pack/vendor/start/Spacegray
```
installs Spacegray - VIM theme

# VIM and OH-MY-ZSH config files

**each file is commented so you get what each command does !!**

.vimrc is my configuration file for VIM

.zshrc is the aliases and settings for OH-MY-ZSH

*this last one is probably not necessary but I think its cool af*

c.vim is a syntax file to highlight struct types according to the norm of Ecole 42
~/.vim/syntax/c.vim

At some point I should make a script to install and add all this stuff :)
