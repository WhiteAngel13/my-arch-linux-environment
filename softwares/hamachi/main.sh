software_hamachi(){
  # Install Haguichi
  echo "Checking if Haguichi is installed..."
  if ! command -v haguichi &> /dev/null
  then
    echo "Attempting to install Haguichi..."
    paru -S logmein-hamachi haguichi
    systemctl enable logmein-hamachi.service
    systemctl start logmein-hamachi.service
  fi
}