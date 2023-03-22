#!/bin/bash

<< comment
	ce script bash permet de créer une image Docker dans laquelle on va installer **alpine:3.14** qui est une version très legère de Linux.
	Chaque instruction dans le Dockerfile va créer une nouvelle layer correspondant à chaque étape de la construction de l'image. Le mieux donc est de créer moins de layers pour avoir un une image plus légère et performante.
comment


# Create a Dockerfile
touch Dockerfile

# add code to the dockerfile
cat << EOF > Dockerfile
# preciser l'image de base : alpine
FROM alpine:3.14

# la commande a executer
CMD ["echo", "Hello Abdelmajid. Votre image Docker a été créé. Pour verifier, executer la commande : docker images -a"]
EOF

# Creer l'image : mon_image (-t) dans le repertoire root
docker build -t mon_image .


# lancer le conteneur
docker run mon_image

echo "-------------------- FIN -------------------------"
