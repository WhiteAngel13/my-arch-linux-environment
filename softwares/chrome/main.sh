software_chrome(){
  # Install Chrome
  echo "Checking if Chrome is installed..."
  if ! flatpak list | grep -q "com.google.Chrome" &> /dev/null
  then
    echo "Attempting to install Chrome..."
    flatpak install flathub com.google.Chrome
  fi
}