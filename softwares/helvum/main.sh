software_helvum(){
  # Install Helvum
  echo "Checking if Helvum is installed..."
  if ! flatpak list | grep -q "org.pipewire.Helvum" &> /dev/null
  then
    echo "Attempting to install Helvum..."
    flatpak install flathub org.pipewire.Helvum
  fi
}