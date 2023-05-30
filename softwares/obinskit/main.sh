software_obinskit(){
  # Install Obinskit to my AnnePro2
  echo "Checking if Obinskit is installed..."
  if ! command -v obinskit &> /dev/null
  then
    echo "Attempting to install Obinskit..."
    paru -S obinskit
  fi
}