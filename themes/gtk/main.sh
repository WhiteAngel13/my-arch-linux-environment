themes_gtk(){
  echo "Checking if catppuccin-gtk-theme-mocha is installed..."
  #Check if catppuccin-gtk-theme-mocha exists in /.themes
  THEME_NAME="Catppuccin-Mocha-Standard-Sky-Dark"
  if ! ls "${HOME}/.themes" | grep -i "${THEME_NAME}" &> /dev/null
  then
    
    DOWNLOAD_DIR="${HOME}/.themes"
    DOWNLOAD_URL="https://github.com/catppuccin/gtk/releases/download/v0.6.0/${THEME_NAME}.zip"
    echo "Installing catppuccin-gtk-theme-mocha..."
    mkdir -p "${DOWNLOAD_DIR}"
    curl -L "${DOWNLOAD_URL}" -o "${DOWNLOAD_DIR}/theme.zip"
    unzip "${DOWNLOAD_DIR}/theme.zip" -d "${DOWNLOAD_DIR}"
    rm "${DOWNLOAD_DIR}/theme.zip"

    sudo rm -rf "${HOME}/.config/gtk-2.0"
    sudo rm -rf "${HOME}/.config/gtk-3.0"
    sudo rm -rf "${HOME}/.config/gtk-4.0"

    cp -r "${HOME}/.themes/${THEME_NAME}/gtk-2.0" "${HOME}/.config/gtk-2.0"
    cp -r "${HOME}/.themes/${THEME_NAME}/gtk-3.0" "${HOME}/.config/gtk-3.0"
    cp -r "${HOME}/.themes/${THEME_NAME}/gtk-4.0" "${HOME}/.config/gtk-4.0"
  fi
}