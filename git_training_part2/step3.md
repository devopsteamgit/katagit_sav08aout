- Git permet une gestion décentralisée des développements sur chacun des serveurs. Sa centralisation du versioning, permet un partager (entres équipes) des développements
- Un Repository Central, assure le rôle de synchronisation entres les différents Repository

![git_users_archi](/testgitessai/scenarios/git_training_part1/assets/git_users_archi.png)

##### *Remarque:*
Cette approche décentralisée, apporte un plus par rapport au autres solutions.
En effet, les programmeurs peuvent continuer à travailler localement en toute autonomie, puis mettre à jour le Repository distant au timing souhaité. Cela permet de diffuser leurs programmes aux autres équipes.

#### Architecture utilisée durant la formation
Afin d'optimiser les ressources nous avons choisi d'utiliser des images docker avec un système Ubuntu. 
Nous avons créé 3 conteneurs docker. Chaque conteneur porte un rôle d'une VM Ubuntu.

- Conteneur "Dev1: Correspond au développeur 1 et son repository local GIT
