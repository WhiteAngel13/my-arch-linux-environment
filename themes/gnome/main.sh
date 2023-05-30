themes_gnome(){
  echo "Checking for gnome-themes-extra..."
  if !command -v gnome-themes-extra &> /dev/null
  then
    echo "Installing gnome-themes-extra..."
    paru -S gnome-themes-extra
  fi
}