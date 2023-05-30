extensions_manager() {
  # Assert extension manager is installed
  echo "Checking if extension manager is installed..."
  if ! flatpak list | grep -q "com.mattjakeman.ExtensionManager" &> /dev/null
  then
    echo "Installing extension manager..."
    flatpak install flathub com.mattjakeman.ExtensionManager
  fi
}