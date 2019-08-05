
#### Nous allons apprendre à manipuler l'historique  des commits: revenir en arrière lorsque c'est utile

   
 Afficher l'historique de tous les commits présents:
 `git log --oneline`{{execute T1}}
 
 Effectuer un reset soft du dernier commit (script 4) 
 `git reset HEAD~1`{{execute T1}}
 
 Constater que la situation est revenue en arrière: comme si le script 4 n'avait pas été commité,
 Grâce à l'option "soft", le script 4 est toujours stagé (indexé) 
  `git status `{{execute T1}}
  
  Effectuer un reset mixed du dernier commit (script 3) 
 `git reset HEAD~1`{{execute T1}}
 
 Constater que la situation est revenue en arrière: comme si le script 4 n'avait pas été commité,
 Grâce à l'option "soft", le script 4 est toujours stagé (indexé) 
  `git status `{{execute T1}}
  
  Vérifier la présence de la branche 'master' (par défaut) du repository 'local'. Elle contient le nouveau fichier.
 `git branch`{{execute T1}}
  
** L'équipe peut à présent versionner dans le repository  **
  Créer le répertoire PROJET:
 `mkdir PROJET;cd PROJET;pwd `{{execute T1}}
 
 - Créer un fichier 'script_1.sh'
 `echo "printf 'Ceci est un script test\n'" > script_1.sh;cat script_1.sh`{{execute T1}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_1.sh `{{execute T1}}
 
  Afficher le status en cours
 `git status `{{execute T1}}
 
 Commmiter/valider la création du nouveau fichier, dans votre Repository local 
  `git commit -m "ajout du script_1.sh dans le repo "`{{execute T1}}
   
 
 
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
