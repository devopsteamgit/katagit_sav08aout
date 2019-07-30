- Git permet une gestion décentralisée du versioning,
- Un repository central, assure la cohérence et la synchronisation de l'ensemble 

![git_users_archi](/testgitessai/scenarios/git_training_part1/assets/git_users_archi.png)

##### *Remarque:*
Cette approche décentralisée, apporte un plus par rapport au autres solutions.
En effet, les programmeur peuvent continuer à travailer localement en toute autonomie, puis mettre à jour le site central lorsqu'ils ont terminés

#### Architecture utilisée durant la formation
Afin d'optimiser les ressources nous avons choisi d'utiliser des images docker avec un système Ubuntu. 
Nous avons créé 3 conteneurs docker. Chaque conteneur porte un rôle d'une VM Ubuntu.

- Conteneur "remote repository" : Correspond repository central GIT
- Conteneur "User1: Correspond au programmeur 1
- Conteneur "User2 : Correspond au programmeur 2


