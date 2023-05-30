shell_tmux(){
  # Assert that tmux is installed
  echo "Checking for tmux..."
  if ! command -v tmux &> /dev/null
  then
    paru -S tmux
  fi
}