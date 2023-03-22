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
Lancer un conteneur qui démarre un serveur Nginx et transferer le trafic du port 8080 sur le port 80 du conteneur:
```
docker run -d -p 8080:80 nginx
```

* `-d` pour détacher le conteneur (possibilité de lancer d'autres conteneurs)
* `-p` pour définir l'utilisation de ports (transferer le trafic du port 8080 vers le port 80 du conteneur. La page par défaut est : `https://127.0.0.1:8080`

Pour vérifier si le conteneur a démarré : `docker ps` :
* Aller sur firefox et utilise ce lien : `http://127.0.0.1:8080/`

Pour voir le contenu du conteneur et pouvoir le modifier sous bash (-ti):

```
docker exec -ti ID_du_conteneur bash
```
Une fois dans le contenair, vous pouvez modifier le fichier de base `/usr/share/nginx/html/index.html` et voir le résultat sur l'adresse  : `http://127.0.0.1:8080`.

```
# installer nano ou vim dans le conteneur
apt-get update
apt-get install nano

# ouvrir le fichier html 
nano /usr/share/nginx/html/index.html
```

Modifier le fichier (ex. remplacer le contenu du fichier par) :
```
<!DOCTYPE html>
<html>
<head>
    <title>Abdelmajid EL HOU - Data Analyst & Scientist</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: sans-serif;
        }
        .header {
            background-color: #0099ff;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }
        .container {
            margin: auto;
            width: 800px;
        }
        .tutorial {
            background-color: #ffffff;
            padding: 20px;
            margin-top: 10px;
        }
        .data-science {
            background-color: #0099ff;
            padding: 20px;
            color: #ffffff;
            margin-top: 10px;
        }
        .eportfolio {
            background-color: #ffffff;
            padding: 20px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Abdelmajid EL HOU - Data Analyst & Scientist</h1>
    </div>
    <div class="container">
        <div class="tutorial">
            <h2>Docker Tutorial</h2>
            <p>Learn how to use Docker to create and manage containers.</p>
        </div>
        <div class="data-science">
            <h2>Data Science Content</h2>
            <p>Explore the world of data science with tips, tutorials and resources.</p>
        </div>
        <div class="eportfolio">
            <h2>My ePortfolio</h2>
            <p>Check out my ePortfolio <a href="https://abdelmajidlh.github.io/ePortfolio/">here</a>.</p>
        </div>
    </div>
</body>
</html>
```

Pour visualiser le résultat en direct, aller dans `http://127.0.0.1:8080` <br>

Pour sortir du contenair et retourner sur votre machine : `exit` ou bien cliquez `ctr+D`.


## Sources
[Optimiser votre déploiement en créant des conteneurs avec Docker]()
