software_dbeaver(){
  # Install Dbeaver
  echo "Checking if Dbeaver is installed..."
  if ! flatpak list | grep -q "io.dbeaver.DBeaverCommunity" &> /dev/null
  then
    echo "Attempting to install Dbeaver..."
    flatpak install flathub io.dbeaver.DBeaverCommunity
  fi
}