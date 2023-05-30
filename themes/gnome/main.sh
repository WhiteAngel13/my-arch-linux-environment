themes_gnome(){
  echo "Checking for gnome-themes-extra..."
  if !command -v gnome-themes-extra &> /dev/null
  then
    echo "Installing gnome-themes-extra..."
    paru -S gnome-themes-extra
  fi

  # Check if background exists at $HOME/Pictures/backgrounds/anha.jpg
  if [ ! -f "$HOME/Pictures/backgrounds/anha.png" ]; then
    echo "Downloading background..."
    URL="https://raw.githubusercontent.com/whiteangel13/my-arch-linux-environment/master/themes/gnome/anha.png"
    
    mkdir -p "$HOME/Pictures/backgrounds"
    curl -o "$HOME/Pictures/backgrounds/anha.png" "$URL"

    echo "Setting background..."
    gsettings set org.gnome.desktop.background picture-uri "file://$HOME/Pictures/backgrounds/anha.png"
  fi
}