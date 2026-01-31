#!/bin/bash
# Alacritty
sudo apt install alacritty
# curl
sudo apt install curl
#Alacritty Themes
git clone git@github.com:alacritty/alacritty-theme.git
# Nerdfonts
curl -fsSL https://raw.githubusercontent.com/zy0r/nerd-fonts-installer/main/install_nerd_fonts.sh | bash
# Devpod
curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64" && sudo install -c -m 0755 devpod /usr/local/bin && rm -f devpod
