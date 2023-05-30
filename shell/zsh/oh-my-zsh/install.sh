shell_zsh_oh_my_zsh_install(){
  # Install Oh My Zsh
  echo "Checking if Oh My Zsh is installed..."
  if [ ! -d "$HOME/.oh-my-zsh" ]; 
  then
    echo "Attempting to install Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
}