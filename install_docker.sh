# Installation de Docker Community Edition 


## Mettre a jour le systeme et installer les prerequis pour l'installation de Docker :
sudo apt-get update && sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common


## ajouter le repository de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

## installer docker sur la machine
sudo apt update && sudo apt-get install docker-ce docker-ce-cli containerd.io


## avor les acces necessaires pour parler avec le daemon
sudo usermod -aG docker  $USER

## redemarrer le system
reboot
