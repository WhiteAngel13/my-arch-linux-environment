source "${BASE_DIR}/fonts/create-fonts-directory.sh"
source "${BASE_DIR}/fonts/jet-brains-nerd-font/main.sh"

fonts() {
  LOCAL_FONTS_DIR="/home/$USER/.fonts"
  create_fonts_directory
  jet_brains_nerd_font
}