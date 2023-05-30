jet_brains_nerd_font(){
  #Check if font is already installed
  echo "Checking if JetBrains Mono Nerd Font is installed..."
  if fc-list | grep -i "JetBrains Mono Nerd Font" &> /dev/null
  then
    echo "Attempting to install JetBrains Mono Nerd Font..."

    FONT_DOWNLOAD_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/JetBrainsMono.zip"
    sudo curl -L "$FONT_DOWNLOAD_URL" -o "$LOCAL_FONTS_DIR/font.zip"
    unzip "$LOCAL_FONTS_DIR/font.zip" -d "$LOCAL_FONTS_DIR"
    sudo rm -f "$LOCAL_FONTS_DIR/font.zip"
    sudo rm -f "$LOCAL_FONTS_DIR/LICENSE"
    sudo rm -f "$LOCAL_FONTS_DIR/readme.md"
    fc-cache -fv
  fi  
}