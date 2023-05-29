source "${BASE_DIR}/shell/zsh/oh-my-zsh/plugins/autosuggestions.sh"
source "${BASE_DIR}/shell/zsh/oh-my-zsh/plugins/syntax-highlighting.sh"

shell_zsh_oh_my_zsh_plugins(){
  shell_zsh_oh_my_zsh_plugins_autosuggestions
  shell_zsh_oh_my_zsh_plugins_syntax_highlighting

  # Regenerate .zshrc plugins
  sed -i 's/plugins=(.*)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc
}