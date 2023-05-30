create_fonts_directory(){
  # Create fonts directory
  echo "Checking if fonts directory exists..."
  if [ ! -d "$LOCAL_FONTS_DIR" ]; 
  then
    echo "Creating fonts directory..."
    mkdir -p "$LOCAL_FONTS_DIR"
  fi
}