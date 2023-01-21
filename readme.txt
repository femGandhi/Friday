Update and Upgrade apt
1)  sudo apt update
2)  sudo apt upgrade

Install GIT & Clone Friday
1)  sudo apt install git
2)  mkdir Downloads
3)  cd Downloads
4)  git clone https://github.com/femGandhi/Friday.git

Install Docker & Portainer
1) sudo ./Friday/Install/install_docker.sh
2) sudo ./install_portainer.sh
3) sudo reboot
4) sudo ./update_portainer.sh


Configure Portainer & Homer
5) Create account to portainer http://localhost:9000
6) Update App Templates URL in http://localhost:9000/#!/settings with a url from the templates file
7) Install Homer container
    Change assets folder location on the host machine to somewhere in the user directory
    Change the main Homer location on the host machine to somehwere in the user directory
    Deploy container

