base_dependencies_paru () {
  # Install Paru
  echo "Checking if Paru is installed..."

  if ! command -v paru &> /dev/null
  then
    echo "Attempting to install Paru..."
    sudo pacman -S --needed base-devel
    local paru_dir=$(mktemp -d)
    (
      cd "$paru_dir"
      git clone https://aur.archlinux.org/paru.git
      cd paru
      makepkg -si
    )
    rm -rf "$paru_dir"
  else
    echo "Paru is already installed"
  fi
}