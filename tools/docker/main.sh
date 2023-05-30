tools_docker(){
  # Install Docker
  echo "Checking if Docker is installed..."
  if ! command -v docker &> /dev/null 
  then
    echo "Attempting to install Docker..."
    paru -S docker docker-compose
    sudo systemctl enable docker.service
    sudo systemctl enable containerd.service
    sudo systemctl start docker.service
    sudo systemctl start containerd.service

    #If docker grourp does not exist, create it
    if ! grep -q docker /etc/group
    then
      sudo groupadd docker
    fi
    sudo usermod -aG docker $USER
    newgrp docker
  fi
}