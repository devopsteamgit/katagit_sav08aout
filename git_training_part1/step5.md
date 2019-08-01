#### (VM1)Installer un Remote Repository GIT (Central)  

Se connecter au user git puis créer le répertoire du Repository (Central)
  `su - git -c "mkdir formteam;cd formteam" `{{execute T1}}
 
 Initialiser le Remote Repository
  `git init --bare`{{execute T1}}

#### (VM2) Créer un autre Repository local (pour les Développeurs travaillant sure cette VM)
 Se connecter à git:
 `su - git`{{execute T2}}
   
 Lancer l'installation du premier Repository local:
 `git init `{{execute T2}}
 
 Configurer le Git local (mail et username)
 `git config --global user.email "git@example.com";git config --global user.name "git Name";pwd;git config --list`{{execute T2}}   
 
 Connecter ce Repository local avec le Remote Repository (Central):
 `git remote add origin ssh://git@git_remote/home/git/formteam`{{execute T2}}

 Vérifier la connexion:
 `git remote -v`{{execute T2}}
 
#### A présent, vous pouvez commencer à développer et commiter (enregistrer) vos dev
 Créer un fichier script_test.sh
 `echo "printf 'Ceci est un script test\n'" > script_test.sh;cat script_test.sh`{{execute T2}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_test.sh `{{execute T2}}
 
 Commmiter (valider) la création du nouveau fichier: dans votre Repository local 
 `git commit -m "ajout du script_test.sh repos local VM2"`{{execute T2}}
   
 Vérifier la présence du branche 'master' pour tracker ce fichier nouveau fichier ajouté:
 `git branch`{{execute T2}}
 
 "Pusher" le fichier de votre Repo local (VM2) --> vers Remote Repo Central (VM1)
 `git push origin master`{{execute T2}}
 
##### _Répondre:
--> Are you sure you want to continue connecting (yes/no)? --> répondre 'yes'
 
 
--> git@git_remote's password: --> mot de passe 'git"
 
 
 Lancer l'installation du Repository local pour les développeurs:
 `git init `{{execute T3}}
 
 
#### (VM1) Constater que le commit a bien été effectué sur le Repository distant (central) 
 Constater que le commit a bien été effectué à distance
 `git log --oneline`{{execute T1}}

Appuyer sur la touche i de votre clavier puis copier le contenu ci-dessous (_Pour copier faite juste un clic sur le text_)



 Vérifier la présence du projet Formation Commune "formteam" visible en local à présent
  `ls`{{execute T2}}
`
[myself]
localhost
[web]
managed_node1
[db]
managed_node2
`{{copy}}


##### _Remarque:

Pour sauvegarder le fichier, utiliser les touches :wq! de votre clavier
