Update and Upgrade apt
1)  sudo apt update
2)  sudo apt upgrade

Install GIT & Clone Friday
1)  sudo apt install git
2)  cd ..
2)  sudo git clone https://github.com/femGandhi/Friday.git friday

Install Docker & Portainer
1) sudo ./friday/Install/install_docker.sh
2) sudo ./friday/Install/install_portainer.sh #reboot may be required after
3) sudo ./friday/Install/update_portainer.sh

Configure Portainer
1) Create account to portainer http://localhost:9000
2) Update App Templates URL in http://localhost:9000/#!/settings with a url from the templates file


Reestore Portainer from backup


Remove running docker containers by first stopping them and later removing them
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)

Uninstall DOCKER
  dpkg -l | grep -i docker  #See installed docker packages
  sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli docker-compose-plugin docker-scan-plugin docker-ce-rootless-extras
  sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-compose-plugin docker-scan-plugin docker-ce-rootless-extras
