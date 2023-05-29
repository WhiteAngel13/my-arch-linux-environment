shell_zsh_oh_my_zsh_themes_power_level_10k(){
  # Install Powerlevel10k
  echo "Checking if Powerlevel10k is installed..."
  if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; 
  then
    echo "Attempting to install Powerlevel10k..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

    # Change ZSH_THEME to powerlevel10k/powerlevel10k in ~/.zshrc
    sed -i 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
  else
    echo "Powerlevel10k is already installed"
  fi
}