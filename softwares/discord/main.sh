software_discord(){
  # Install Discord
  echo "Checking if Discord is installed..."
  if ! flatpak list | grep -q "com.discordapp.Discord" &> /dev/null
  then
    echo "Attempting to install Discord..."
    flatpak install flathub com.discordapp.Discord
  fi
}