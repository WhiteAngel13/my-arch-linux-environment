software_code(){
  # Install Code
  echo "Checking if Code is installed..."
  if ! command -v code &> /dev/null
  then
    echo "Attempting to install Code..."
    paru -S visual-studio-code-bin
  else
    echo "Code is already installed"
  fi
}