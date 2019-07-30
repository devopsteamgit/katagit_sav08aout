- Git permet de décentraliser le versioning 

![ansible architecture](/testgitessai/katagit/git_training_part1/assets/git_users_archi.png)

![ansible architecture](/devopsteam/scenarios/ansible_training_part1/assets/ansible_architecture.png)

#### Architecture utilisée durant la formation
Afin d'optimiser les ressources nous avons choisi d'utiliser des images docker avec un système Ubuntu. 
Nous avons créé 3 conteneurs docker. Chaque conteneur porte un rôle d'une VM Ubuntu.

- Conteneur "ansible_node" : Correspond au serveur Controleur Ansible
- Conteneur "managed_node1 : Correspond au serveur managé 1
- Conteneur "managed_node2 : Correspond au serveur managé 2

##### *Remarque:*
Le serveur controleur peut avoir aussi le role d'un serveur managé 
