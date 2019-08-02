 
 
#### Apprendre à annuler un commit (reset)

  Lister les commits précédents
 `git log --oneline`{{execute T1}}

 Consulter l'id du commit qui va être supprimé 
 `git log --oneline | head -1  | awk '{print $1}'`{{execute T1}}
  
 lancer le git 'reset <commit id>' 
 `git log --oneline | head -1  | awk '{print "git reset HEAD "$1}'`{{execute T1}}
 

