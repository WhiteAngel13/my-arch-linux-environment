software_technic_launcher(){
  # Install Technic-Launcher
  echo "Checking if Technic-Launcher is installed..."
  if ! command -v technic-launcher &> /dev/null
  then
    echo "Attempting to install Technic-Launcher..."
    paru -S minecraft-technic-launcher
  fi
}