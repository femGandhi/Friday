#!/bin/bash

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

function check_internet() {
  printf "Checking if you are online..."
  wget -q --spider http://github.com
  if [ $? -eq 0 ]; then
    echo "Online. Continuing."
  else
    error "Offline. Go connect to the internet then run the script again."
  fi
}

#Return 1 if container is running
function check_container(){
  container_name = $1
  docker run container_name
  if [ "$( docker container inspect -f '{{.State.Status}}' $container_name )" == "running" ]; then 
    return 1
  else
    echo "Remember to logoff/reboot for the changes to take effect."
    return 0
  fi
}


check_internet

###   https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script
curl -sSL https://get.docker.com | sh || error "Failed to install Docker."

### https://docs.docker.com/engine/install/linux-postinstall/
#Usermod creates a usergroup called docker
sudo usermod -aG docker $USER || sudo gpasswd -a $USER docker || error "Failed to add user to the Docker usergroup."

#Activate changes to groups
newgrp docker

#Verify container is running
check_container hello-world
