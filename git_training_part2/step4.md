

#### Nous allons apprendre à manipuler l'historique  des commits: revenir en arrière lorsque c'est utile

   
 Afficher l'historique de tous les commits présents:
 `git log --oneline`{{execute T1}}
 
 Effectuer un reset 'hard' du dernier commit (script 6) 
 `git reset HEAD~1 --hard`{{execute T1}}
 
 Constater que la situation est revenue en arrière/au précédent commit
 `git log --oneline`{{execute T1}}
  De plus, grâce à l'option "hard": le script 6, a complètement disparu de la working directory (répertoire de travail)
  `ls;git status `{{execute T1}}
  
  Effectuer un reset 'mixed' du dernier commit (script 5) 
 `git reset HEAD~1 --mixed`{{execute T1}}
  
  Constater que la situation est revenue en arrière/au précédent commit
  `git log --oneline`{{execute T1}}
  Grâce à l'option "mixed", le script 5 est toujours dans la working directory, mais n'est plus stagé (indexé) 
  `ls;git status `{{execute T1}}
  
  Effectuer un reset 'soft' du dernier commit (script _4) 
 `git reset HEAD~1 --soft`{{execute T1}}
 
  Constater que la situation est revenue en arrière/au précédent commit
  `git log --oneline`{{execute T1}}
  Grâce à l'option "soft", le script 4 (tout comme le 5) ont restés dans la working directory et sont staggés (indexé) 
  `ls;git status `{{execute T1}}
  
  Effectuer un resvert du premier commit (correspond script 1) 
 `./revert_script1.sh`{{execute T1}}
  Constater que le commit du script 1 est conservé dans l'historique, un nouveau commit apparait pour signifier la suppression du script 1
 `git log --oneline`{{execute T1}}
  Constater que le script n'est plus dans la working directory 
  `ls`{{execute T1}}
