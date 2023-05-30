shell_alacritty(){
  echo "Checking if alacritty is installed"
  if ! command -v alacritty &> /dev/null
  then
    echo "installing alacritty"
    paru -S alacritty
    config_dir="$HOME/.config/alacritty"
    cp $BASE_DIR/shell/alacritty/alacritty.yml $config_dir/alacritty.yml
    cp $BASE_DIR/shell/alacritty/theme.yml $config_dir/theme.yml
  fi


}