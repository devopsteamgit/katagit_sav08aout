- Git permet une gestion décentraliser du versioning,
- Un repository central, assure également la cohérence et la synchronisation de l'ensemble 

![git_users_archi](/testgitessai/scenarios/git_training_part1/assets/git_users_archi.png)

#### Architecture utilisée durant la formation
Afin d'optimiser les ressources nous avons choisi d'utiliser des images docker avec un système Ubuntu. 
Nous avons créé 3 conteneurs docker. Chaque conteneur porte un rôle d'une VM Ubuntu.

- Conteneur "remote repository" : Correspond repository central GIT
- Conteneur "User1: Correspond au programmeur 1
- Conteneur "User2 : Correspond au programmeur 2

##### *Remarque:*
Le serveur controleur peut avoir aussi le role d'un serveur managé 
