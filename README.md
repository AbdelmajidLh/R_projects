# Introduction à Docker

L'objectif de ce repository est de vous montrer comment manipuler (télécharger, démarrer, arrêter, ...) des conteneurs docker sous Linux (Ubuntu)


## Les commandes de base de docker
```
# lister les images disponibles sur ma machine
docker images

# lister les contenairs disponibles sur notre ordinateur
docker ps

# telecharger une image existante a partir de docker hub ou dossier existant
## docker hub contiens des millions d'images telechargeables
## exemple telecharger l'image node js : langage de serveur web
docker pull node

## verifier
docker images

# faire tourner le contenaire de cette image (-it pour interactif ou en executé)
docker run -it node 

# pour verifier le contenaire d'image (ouvrir un nouveau terminal)
docker ps

# pour stopper le contenair de l'image (copier l'iD et utiliser stop)
docker stop f88e32aed446

# run en detaché (-d) en arriere plan
docker run -it -d node

## verifier que ca tourne en arriere plan
docker ps

## arreter 
docker stop f88e32aed446


# relancer un autre contenaire hello-world (existant sur le docker hub)
docker run hello-world
```

## Démarrer un serveur Nginx avec un conteneur Docker
Lancer un conteneur qui démarre un serveur Nginx :
```
docker run -d -p 8080:80 nginx
```

* `-d` pour détacher le conteneur (possibilité de lancer d'autres conteneurs)
* `-p` pour définir l'utilisation de ports (transferer le trafic du port 8080 vers le port 80 du conteneur. La page par défaut est : `https://127.0.0.1:8080`

Pour vérifier si le conteneur a démarré : `docker ps` :
* Aller sur firefox et utilise ce lien : `http://127.0.0.1:8080/`

## Sources
[Optimiser votre déploiement en créant des conteneurs avec Docker]()
