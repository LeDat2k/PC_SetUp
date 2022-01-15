#!/bin/bash
 
sudo apt update -y 
# terminal
sudo apt install -y curl git
sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

chsh -s $(which zsh)

cat zshrc > ~/.zshrc

# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get -y update
sudo apt-get -y install sublime-text

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb && rm google-chrome-stable_current_amd64.deb

# vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt -y install apt-transport-https
sudo apt -y update
sudo apt -y install code # or code-insiders


# DBeaver
sudo apt update
sudo apt -y install default-jdk
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
sudo apt update
sudo apt install dbeaver-ce


# another app
sudo apt install -y rofi tmux python3-pip xclip htop vlc bat

# espanso
wget https://github.com/federico-terzi/espanso/releases/download/v0.7.3/espanso-debian-amd64.deb
sudo apt install ./espanso-debian-amd64.deb
rm espanso-debian-amd64.deb
espanso start 


# lsd (instead of exa which only avaiable in ubuntu 20.10 and higher version)
# sudo apt install -y exa
wget https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_amd64.deb
sudo dpkg -i lsd_0.20.1_amd64.deb && rm lsd_0.20.1_amd64.deb

# move .ssh file 
cd ssh/ && mv id_* ~/.ssh
mv known_hosts ~/.ssh

# Java
sudo apt update
sudo apt -y install default-jdk

# NodeJS NPM
sudo apt install -y nodejs npm


# power manager
# sudo apt install -y tlp powertop
# sudo add-apt-repository ppa:linuxuprising/apps
# sudo apt -y update
# sudo apt -y install tlpui

# table plus
wget -qO - http://deb.tableplus.com/apt.tableplus.com.gpg.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://deb.tableplus.com/debian tableplus main"
sudo apt -y update
sudo apt -y install tableplus

# WPS


# sudo apt-add-repository universe
# sudo apt install gnome-tweak-tool

sudo apt install gnome-shell-extension-autohidetopbar

