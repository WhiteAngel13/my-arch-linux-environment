base_dependencies_bluetooth () {
  # Install Bluez
  echo "Checking if Bluez is installed"
  if ! command -v bluetoothctl &> /dev/null
  then
    echo "Attempting to install Bluez"
    paru -S bluez
    paru -S bluez-utils
    systemctl enable bluetooth.service
    systemctl start bluetooth.service
  fi
}