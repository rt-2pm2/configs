#!/bin/sh

# CURL
echo "\n Installing CURL"
sudo apt install curl

# NEOVIM
echo "\n Installing NVIM"
sudo apt install neovim

echo "\n Installing VIMPLUG"
NVIMPLUGDIR=~/.local/share/nvim/site
if [ ! -d $NVIMPLUGDIR ]; then
	echo "\nInstalling VIMPLUG"
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
else
	echo "\nVIMPLUG already there!"
fi


echo "\n Checking VIMPLUG config file"
NVIMCONFDIR=~/.config/nvim
if [ ! -d $NVIMCONFDIR ]; then
	echo "\nInstalling nvim config"
else
	echo "\n NVIM config already there!"
fi


# GIT
echo "\n Installing GIT"
sudo apt install git gitk tig

# GUAKE
echo "\n Installing GUAKE"
sudo apt install guake

# SEARCHER
echo "\n Intalling AG Searcher"
sudo apt install silversearcher-ag

# HTOP
echo "\n Intalling HTOP"
sudo apt install htop

# ZSH
echo "\n Intalling ZSH"
sudo apt install zsh

# Oh-My-Zsh
ZSHDIR=~/.oh-my-zsh
if [ ! -d $ZSHDIR ]; then
	echo "\nInstalling Oh-My-Zsh"
	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
else
	echo "\nOh-My-Zsh is already installed"
fi

# FUZZYSEARCH
FZFDIR=~/.fzf
if [ ! -d $FZFDIR ]; then
	echo "\nInstalling Fuzzy Completition"
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
else
	echo "\nFuzzy completition already installed"
fi


