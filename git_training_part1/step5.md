 
 
#### Créer un Repository 'local' afin de versionner les développements sur la VM

 Se connecter à git:
 `su - git`{{execute T1}}
   
 Lancer l'installation du premier Repository 'local':
 `git init;git add . ;git commit -a -m "intallation d'un Repo local "  `{{execute T1}}
 
 Configurer le Git local (mail & username)
  `git config --global user.email "git@example.com";git config --global user.name "git Name";pwd;git config --list `{{execute T1}}
  
  Créet le répertoire PROJET:
 `mkdir PROJET;cd PROJET;pwd `{{execute T1}}
 
** L'équipe peut à présent versionner dans le repository  **

 - Créer un fichier 'script_1.sh'
 `echo "printf 'Ceci est un script test\n'" > script_1.sh;cat script_1.sh`{{execute T1}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_1.sh `{{execute T1}}
 
  Afficher le status en cours
 `git status `{{execute T1}}
 
 Commmiter/valider la création du nouveau fichier, dans votre Repository local 
  `git commit -m "ajout du script_1.sh dans le repo "`{{execute T1}}
   
 Vérifier la présence de la branche 'master' (par défaut) du repository 'local'. Elle contient le nouveau fichier.
 `git branch`{{execute T1}}
 
 
 
#### Création d'une autre branche pour les développements 
 - Créer la branche
 `git branch Dev`{{execute T1}}
 
 Vérifier la présence de la branche 'Dev'
 `git branch`{{execute T1}}

 Se déplacer dans la branche
 `git checkout Dev`{{execute T1}}

 La branche 'Dev' est à présent active
 `git branch`{{execute T1}}
 
 Créer un second fichier dans la branche de Dev cette fois ci 'script_2.sh'
 `echo "printf 'Ceci est un script test\n'" > script_2.sh;cat script_2.sh`{{execute T1}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_2.sh `{{execute T1}}
 
 Afficher le status en cours
 `git status `{{execute T1}}
 
 Commmiter/valider la création du nouveau fichier, dans votre Repository local 
 `git commit -m "ajout du script_2.sh dans le repo de Dev"`{{execute T1}}
   
 Vérifier la présence de la branche 'Dev'
 `git branch`{{execute T1}}
 
#### Fusionner les branches 'Dev' & 'master'

 Se metttre dans la branche master 
 `git checkout master`{{execute T1}}
 
  Effectuer un 'diff' pour consulter ce qui va être "merger" 
 `git diff master Dev`{{execute T1}}

 Fusionner la branche 'Dev' dans la  'master'
 `git merge Dev`{{execute T1}}
  
 Afficher le status en cours
 `git status `{{execute T1}}
 
 Il n'y a plus rien à "merger"
 `git diff master Dev`{{execute T1}}
 
 Supprimer la branche 'Dev'
 `git branch -d Dev`{{execute T1}}

 Vérifier que la branche 'Dev' est bien supprimée
 `git branch `{{execute T1}}
