shell_zsh_oh_my_zsh_plugins_syntax_highlighting(){
  # Install Zsh Syntax Highlighting
  echo "Checking if Zsh Syntax Highlighting is installed..."
  if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; 
  then
    echo "Attempting to install Zsh Syntax Highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  fi
}