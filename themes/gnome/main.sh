themes_gnome(){
  echo "Checking for gnome-themes-extra..."
  if !command -v gnome-themes-extra &> /dev/null
  then
    echo "Installing gnome-themes-extra..."
    paru -S gnome-themes-extra
  fi

  # Check if background exists at $HOME/Pictures/backgrounds/anha.jpg

  if [ ! -f "$HOME/Pictures/backgrounds/anha.jpg" ]; then
    echo "Downloading background..."
    URL="https://raw.githubusercontent.com/whiteangel13/my-arch-linux-environment/master/themes/gnome/anha.png"
    curl -o "$HOME/Pictures/backgrounds/anha.png" "$URL"
  fi
}