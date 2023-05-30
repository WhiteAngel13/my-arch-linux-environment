software_obs_studio(){
  # Install Obs Studio
  echo "Checking if Obs Studio is installed..."
  if ! flatpak list | grep -q "com.obsproject.Studio" &> /dev/null
  then
    echo "Attempting to install Obs Studio..."
    flatpak install flathub com.obsproject.Studio

    local theme_temp=$(mktemp -d)
    (
      cd "$theme_temp"
      git clone https://github.com/catppuccin/obs.git
      cd obs
      chmod +x install.sh
      ./install.sh
    )
    rm -rf "$theme_temp"
  fi
}