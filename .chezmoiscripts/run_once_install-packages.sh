#!/bin/bash
#sudo apt install alacritty
sudo apt install curl
sudo apt install devpod
git clone git@github.com:alacritty/alacritty-theme.git
curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64" && sudo install -c -m 0755 devpod /usr/local/bin && rm -f devpod
