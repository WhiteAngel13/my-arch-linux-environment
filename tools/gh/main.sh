tools_gh(){
  # Install Github CLI
  echo "Checking if Github CLI is installed..."
  if ! command -v gh &> /dev/null 
  then
    echo "Attempting to install Github CLI..."
    paru -S github-cli
  fi
}