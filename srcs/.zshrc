# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/user42/.oh-my-zsh"

#42 Header Settings for VIM
export USER="sshakya"
export MAIL="sshakya@student.42.fr"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Aliases
# 42 VM -- imposed by cursus
alias norminette="~/.norminette/norminette.rb"
alias gcc="clang-9"
alias clang="clang-9"

# custom mod file
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
alias vimrc="vim ~/.vimrc"

# Custom Commands
alias lsl="ls -l --group-directories-first"
cdd() {cd "$1" && ls -l --group-directories-first}
alias clangF="clang-9 -Wall -Werror -Wextra"

# Project Files
alias Printf="cd ~/Documents/Projects/ft_printf && ls -l --group-directories-first"
alias cub3D="cd ~/Documents/Projects/cub3D && ls -l --group-directories-first"
alias libft="cd ~/Documents/Projects/libft && ls -l --group-directories-first"
alias GNL=" cd ~/Documents/Projects/get_next_line && ls -l --group-directories-first"
alias piscine="cd ~/Documents/Projects/Piscine_2020 && ls -l --group-directories-first"
alias Projects=" cd ~/Documents/Projects && ls -l --group-directories-first"
alias corrections=" cd ~/Documents/corrections && ls -l --group-directories-first"
alias ft_server=" cd ~/Documents/Projects/ft_server && ls -l --group-directories-first"
