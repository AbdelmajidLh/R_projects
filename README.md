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
