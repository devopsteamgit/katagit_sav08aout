 
#### Clonage d'un Repository distant
 
 
  Créer un répertoire d'accueil du clone en local
 `mkdir /home/git/repoclone`{{execute T1}}
 
  Initialiser le nouvel enviroment git
 `git init `{{execute T1}}
 
 Lancer la commande de clone
 `git clone git clone https://github.com/testgitpub/remoterepo.gitt`{{execute T1}}

 Constater que le repository  "remoterepo"  a été importé sur la VM avec sont arborescence
 `ls; ls -l remoterepo/*`{{execute T1}}
 
 Vous pouvez même travailler sur ce nouveau repository local (initialiser à partir d'un clone)
 
 Créer le fichier test.log
 `cd /home/git/repoclone/remoterepo/;touch test.log`{{execute T1}}
 
Ajouter ce ficjhier dans la stagin area (index)
`git add --all`{{execute T1}}

Consulter le status
`git status`{{execute T1}}

Commiter le fichier dans votre repository local 'repoclone'
`git commit -a -m "ajout fic test.log dans repoclone"`{{execute T1}}
 
Vérifier le commit
`git log --oneline"`{{execute T1}}