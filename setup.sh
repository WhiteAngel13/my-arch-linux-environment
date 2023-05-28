#!/bin/bash

# Install Git
if ! command -v git &> /dev/null
then
  sudo pacman -S git
fi

# Install Paru
if ! command -v paru &> /dev/null
then
  sudo pacman -S --needed base-devel
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si
  cd ..
  rm -rf paru
fi

# Install Code
if ! command -v code &> /dev/null
then
  paru -S visual-studio-code-bin
fi

# Install Bluez
if ! command -v bluetoothctl &> /dev/null
then
  paru -S bluez
  paru -S bluez-utils
  systemctl enable bluetooth.service
  systemctl start bluetooth.service
fi

# Install Obinskit to my AnnePro2
if ! command -v obinskit &> /dev/null
then
  paru -S obinskit
fi

# Install Github CLI
if ! command -v gh &> /dev/null
then
  paru -S github-cli
fi

# Install Zsh
if ! command -v zsh &> /dev/null
then
  paru -S zsh
  chsh -s $(which zsh)
fi

# Install Fira Code Nerd Font
if ! fc-list | grep -q "FiraCode Nerd Font" ; 
then
  LOCAL_FONTS_DIR=~/.fonts
  NERD_FONTS_DOWNLOAD_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/FiraCode.zip"

  # Create fonts directory
  if [ ! -d "$LOCAL_FONTS_DIR" ]; 
  then
    mkdir -p "$LOCAL_FONTS_DIR"
  fi

  sudo curl -L "$NERD_FONTS_DOWNLOAD_URL" -o "$LOCAL_FONTS_DIR/FiraCode.zip"
  unzip "$LOCAL_FONTS_DIR/FiraCode.zip" -d "$LOCAL_FONTS_DIR"
  sudo rm -f "$LOCAL_FONTS_DIR/FiraCode.zip"
  sudo rm -f "$LOCAL_FONTS_DIR/LICENSE"
  sudo rm -f "$LOCAL_FONTS_DIR/readme.md"
  fc-cache -fv
fi

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; 
then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Powerlevel10k
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; 
then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

  # Change ZSH_THEME to powerlevel10k/powerlevel10k in ~/.zshrc
  sed -i 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
fi