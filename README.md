
### PRE-REQUISITES

- *UNIX like OS*

- *zsh -- 5.0.8 and newer --* 

- *VIM 8+*

[INSTALL ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

[INSTALL VIM 8+](https://www.vim.org/download.php#unix)

# BASIC SETUP

These are the basic packages/plugins i use so you'll have to use them to use my dotfiles !!
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [NERDTree](https://github.com/preservim/nerdtree)
- [Spacegray](https://github.com/ajh17/Spacegray.vim)

*you can full custom your setup by reading all that doc and the [VIM DOC](https://www.vim.org/docs.php)*
*visual list of vim themes - [colorswat.ch](https://colorswat.ch/vim/list?cat=all)
Or just trust me and run the following commands  -- **at your own risk** *xD* 

## Basic Setup for Vim and ZSH
create your .vim folder in your home directory
```
mkdir ~/.vim
```
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

### .VIMRC

**.vimrc** is my configuration file for VIM

the first block of settings are globally accepted as being "the best" -- the rest is just my personal taste
feel free to read google and find more stuff you like.

### .ZSHRC

**.zshrc** is the aliases and settings I like to use for OH-MY-ZSH *go to the end of the doc* and do things like get to a file or folder qickly, sort my ls -l command. **use this file as inspiration I dont suggest you copy it !!!** at all
### C.VIM

**c.vim** is a syntax file
you'll need to make a directory *syntax* in your *~/.vim* directory
```
mkdir -p .vim/syntax
```
to highlight struct types according to the norm of Ecole 42 **this file could definately be made to highlight the ft_ format that we use for functions** I havent done it because i am still coding the libft :P but definitely will do it as soon as libft is *set as finish* !! 

At some point I should make a script to install and add all this stuff - probably when 42 re-opens :) --*maybe you can do it*
