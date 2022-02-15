#!/bin/bash
# Necessarios? arch
sudo pacman -S git go python firefox noto-fonts curl wget --noconfirm
sudo pacman -S python-pip --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
yay

# BitWarden extensao do firefox
# AdBlocker extensao do firefox
# FoxyProxy extensao do firefox
# That's pretty much it

# Necessarios? deb
# sudo apt-get install git python3 curl wget -y
# sudo apt-get install python3-pip -y
# sudo apt-get purge snapd -y #tirar o spyware

#Poggers
# bash deb
# echo 'alias poggers="sudo apt-get update && sudo apt-get upgrade"' >> ~/.bashrc
# zsh deb
# echo 'alias poggers="sudo apt-get update && sudo apt-get upgrade"' >> ~/.zshrc
# bash arch
echo 'alias poggers="yay"' >> ~/.bashrc
# zsh arch
# echo 'alias poggers="yay"' >> ~/.zshrc

#Sublime deb
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# sudo apt-get install apt-transport-https -y
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get update
# sudo apt-get install sublime-text -y

#Sublime arch
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf 
sudo pacman -Syu 
sudo pacman -S sublime-text --noconfirm

#code deb
# wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
# sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
# sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
# rm -f packages.microsoft.gpg
# sudo apt-get install apt-transport-https -y
# sudo apt-get install code -y

#code arch
sudo pacman -S code --noconfirm

#Spotify deb
# curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
# echo "deb [trusted=yes] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt-get update
# sudo apt-get install spotify-client -y

#Spotify arch
yay -S spotify

#Discord deb
# curl https://dl.discordapp.net/apps/linux/0.0.16/discord-0.0.16.deb -o discord.deb
# sudo apt-get install ./discord.deb -y
# rm discord.deb

#Discord arch '-----'
sudo pacman -S discord --noconfirm #se der erro, macacada com outras versoes

#LibreOffice arch (deb - ja vem no bubuntus)
sudo pacman -S libreoffice-fresh --noconfirm

#Steam deb
# wget http://repo.steampowered.com/steam/archive/precise/steam_latest.deb
# sudo apt-get install ./steam_latest.deb -y
# sudo apt-get install -f -y
# sudo apt-get install ./steam_latest.deb -y

#Steam arch
echo Caso nao esteja ativado, ativar multilib em /etc/pacman.conf, tirando o comment de [multilib] e Include...
sudo pacman -S steam --noconfirm
