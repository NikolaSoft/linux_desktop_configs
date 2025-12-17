#!/bin/bash

# Установить необходимые пакеты
sudo apt update
sudo apt install -y fonts-powerline fonts-firacode fonts-noto

# Скачать Meslo Nerd Fonts
mkdir -p ~/.fonts
cd ~/.fonts
wget -q -O "MesloLGS NF Regular.ttf" "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
wget -q -O "MesloLGS NF Bold.ttf" "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
wget -q -O "MesloLGS NF Italic.ttf" "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
wget -q -O "MesloLGS NF Bold Italic.ttf" "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"

# Обновить кэш шрифтов
fc-cache -fv

# Установить шрифт в MATE Terminal
dconf write /org/mate/terminal/profiles/default/use-system-font false
dconf write /org/mate/terminal/profiles/default/font "'MesloLGS NF 11'"

echo "Шрифты установлены. Перезапустите терминал."
