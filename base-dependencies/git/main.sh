base_dependencies_git () {
  # Install Git
  echo "Checking if Git is installed"
  if ! command -v git &> /dev/null 
  then
    echo "Attempting to install Git"
    sudo pacman -S git
  else
    echo "Git is already installed"
  fi
}