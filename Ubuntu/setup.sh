#!/bin/bash
 
sudo apt update -y 
sudo apt install -y curl vlc zsh git htop tmux

sudo apt-add-repository universe
sudo apt install gnome-tweak-tool

sudo snap install --classic code
sudo snap install sublime-text --classic

sudo apt install gnome-shell-extension-autohidetopbar



sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

chsh -s $(which zsh)


gsettings set org.gnome.desktop.interface show-battery-percentage true