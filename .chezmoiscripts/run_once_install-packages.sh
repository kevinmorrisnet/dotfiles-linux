#!/bin/bash
set -euo pipefail

# Alacritty + curl
sudo apt install -y alacritty curl

# Alacritty Themes
if [ ! -d ~/.config/alacritty/themes ]; then
  git clone git@github.com:alacritty/alacritty-theme.git ~/.config/alacritty/themes
fi

# UbuntuMono Nerd Font
curl -fsSL -o /tmp/UbuntuMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/UbuntuMono.zip \
  && mkdir -p ~/.local/share/fonts \
  && unzip -o /tmp/UbuntuMono.zip -d ~/.local/share/fonts/UbuntuMono \
  && fc-cache -fv \
  && rm /tmp/UbuntuMono.zip

# Devpod
curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64" \
  && sudo install -c -m 0755 devpod /usr/local/bin \
  && rm -f devpod

# Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
