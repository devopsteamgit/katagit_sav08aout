
 
##### Planning première partie, 
     - nous allons  créer un nouveau `repository local` GIT,
     - nous alons cloner un `repository existant`  (remote),
     - apprendre à `versionner` nos scripts,
     - créer ou supprimer des `branches` de `développements`, 
     - faire des `commits`,  `annuler` les commits,
     - consulter les status, les `logs`, `l'historique` des versions
     - effectuer des `merges` entre `branches`
     

![git-central](/testgitessai/scenarios/git_training_part1/assets/git-central.png)

_Remarque: nous verrons par la suite, comment créer le repository Central (distant)_



Nous allons ouvrir un terminal sur une VM, qui hébergera notre Repository Local GIT et les premiers développements.

Vérifier que l'environnement de formation est disponible:
`if [ $(docker ps  | grep -v CONTAINER | wc -l) -ge 3 ]; then echo "OK"; else echo "Attendre 30s!";sleep 30;  fi`{{execute T1}}

Puis, lancer la commande de connection au terminal:
`d1() { docker exec -it dev1_git_local bash -c "cd /work_dir; echo 'PS1='\''dev1_git_local# '\' >> /root/.bashrc; su - git"; } && d1`{{execute T1}}


##### _Remarque_:
Le prompt dev1_git_local#  vous aidera à repèrer la machine sur laquelle vous êtes connecté.

Si toutes fois vous êtes sortie avec un exit , vous pouvez taper les commandes suivantes:

d1 => Pour se connecter à la VM 'dev1_git_local'.
