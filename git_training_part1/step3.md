- Git permet une gestion décentralisée et autonome des développeurs sur leurs serveurs. La centralisation du versioning permet ensuite de faire bénéficier des développements aux autres équipes,
- Un repository central, assure la cohérence de l'ensemble des repository locaux et leursynchronisations  

![git_users_archi](/testgitessai/scenarios/git_training_part1/assets/git_users_archi.png)

##### *Remarque:*
Cette approche décentralisée, apporte un plus par rapport au autres solutions.
En effet, les programmeurs peuvent continuer à travailler localement en toute autonomie, puis mettre à jour le site central au timing souhaité.

#### Architecture utilisée durant la formation
Afin d'optimiser les ressources nous avons choisi d'utiliser des images docker avec un système Ubuntu. 
Nous avons créé 3 conteneurs docker. Chaque conteneur porte un rôle d'une VM Ubuntu.

- Conteneur "remote repository" : Correspond repository central GIT
- Conteneur "Dev1: Correspond au développeur 1 et son repository local GIT
- Conteneur "Dev2 : Correspond au développeur 2 et son repository local GIT


