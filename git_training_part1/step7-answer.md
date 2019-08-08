#### Correction

> créer une nouvelle branche devteam
git branch devteam

> déplacer vous dans cette branche

> Créer un fichier script_3.sh contenenant 
 dans votre espace de travail:  `"echo  Hello"`{{copy}}
 
> Ajouter ce fichier dans la staging area (index)

> commiter ce fichier dans votre repository local

> vérifier le commit
Création d'une branche pour les développements
Créer la branche git branch devteam{{execute T1}}
Vérifier la présence de la branche 'devteam' git branch{{execute T1}}

Se déplacer dans la branche git checkout devteam{{execute T1}}

La branche 'Dev' est à présent active git branch{{execute T1}}

Créer un second fichier dans la branche de Dev cette fois ci 'script_2.sh' echo "printf 'Ceci est un script test créé dans la branche Dev \n'" > script_2.sh;cat script_2.sh{{execute T1}}

Ajouter le fichier dans la cache "Staging Area" git add script_2.sh {{execute T1}}

Afficher le status en cours git status {{execute T1}}

Commmiter/valider la création du nouveau fichier, dans votre Repository 'local' git commit -m "ajout du script_2.sh dans la branche Dev"{{execute T1}}

Constater, que le scipt a été committé dans le repository git log --oneline {{execute T1}}

Vérifier la présence de la branche 'Dev' git branch{{execute T1}}
