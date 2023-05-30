shell_zsh_oh_my_zsh_plugins_autosuggestions(){
  # Install Zsh Autosuggestions
  echo "Checking if Zsh Autosuggestions is installed..."
  if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; 
  then
    echo "Attempting to install Zsh Autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  fi
}