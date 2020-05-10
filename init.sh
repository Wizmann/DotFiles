#!/bin/bash

UBUNTU_CODENAME=`cat /etc/os-release  | grep UBUNTU_CODENAME= | cut -f 2 -d "="`

sudo sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu\//https:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu\//g' /etc/apt/sources.list
sudo sed -i 's/http:\/\/security.ubuntu.com\/ubuntu\//https:\/\/mirrors.tuna.tsinghua.edu.cn\/ubuntu\//g' /etc/apt/sources.list

sudo apt update
yes | sudo apt install git zsh tmux build-essential vim wget curl
yes | sudo apt upgrade

mkdir $HOME/.bin
mkdir $HOME/.opt

proxychains wget https://raw.githubusercontent.com/Wizmann/DotFiles/master/vimrc -O $HOME/.vimrc
proxychains wget https://raw.githubusercontent.com/Wizmann/DotFiles/master/zshrc -O $HOME/.zshrc

proxychains wget https://raw.githubusercontent.com/Wizmann/DotFiles/master/winclip -O $HOME/.bin/clip
chmod +x $HOME/.bin/clip
proxychains wget https://raw.githubusercontent.com/Wizmann/DotFiles/master/tmux.conf -O $HOME/.tmux.conf

proxychains git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
proxychains wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O install.sh
./install.sh
