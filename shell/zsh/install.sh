shell_zsh_install(){
  # Install Zsh
  echo "Checking if Zsh is installed..."
  if ! command -v zsh &> /dev/null
  then
    echo "Attempting to install Zsh..."
    paru -S zsh
    chsh -s $(which zsh)
  fi
}