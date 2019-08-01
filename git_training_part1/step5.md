#### Installer un Remote Repository GIT (interne)  / VM1

Créer votre premier Remote Repository (Central)

 Se connecter à git:
   `su - git`{{execute T1}}

 Création dun répertoire du nouveau Remote Repository
`mkdir formteam;cd formteam`{{execute T1}}

 Lancement de l'installation du Remote Repository (VM1):
  `git init --bare`{{execute T1}}

#### Créer un Repository local pour les Développeurs travaillant sur la VM2
 Se connecter à git:
 `su - git`{{execute T2}}
   
 Lancement de l'installation Repository local1:
 `git init `{{execute T2}}
 
 Configurer le Git local (mail et username)
 `git config --global user.email "git@example.com";git config --global user.name "git Name";git config --list`{{execute T2}}   
 
  
 Connecter ce Repository local avec le Remote Repository (Central):
 `git remote add origin ssh://git@git_remote/home/git/formteam`{{execute T2}}

 Vérifier la connexion:
 `git remote -v`{{execute T2}}
 
 Vérifier la présence du projet Formation Commune "formteam" visible en local à présent
  `ls`{{execute T2}}
  

#### A présent, vous pouvez commencer à développer et commiter 
 Créer un fichier exemple script_test.sh
 `echo "ls" > script_test.sh;cat script_test.sh`{{execute T2}}
 
 Ajouter le fichier test dans la cache "Staging Area"
 `git add script_test.sh `{{execute T2}}
 
 Commmiter la création du nouveau fichier, dans votre Repository local (VM2)
 `git commit -m "ajout du script_test.sh repos local VM2"`{{execute T2}}
   
 Vérifier la présence du branche 'master' pour tracker ce fichier nouveau fichier ajouté:
 `git branch`{{execute T2}}
 
 Pusher le fichier de votre Repo local (VM2) --> vers Remote Repo Central (VM1)
 `git push origin master`{{execute T2}}
 
##### _Réponses:
(1) Are you sure you want to continue connecting (yes/no)? --> répondre 'yes'
 
(2) git@git_remote's password: --> mot de pass 'git"
 
 
 Lancement de l'installation Repository local2:
 `git init `{{execute T3}}

Appuyer sur la touche i de votre clavier puis copier le contenu ci-dessous (_Pour copier faite juste un clic sur le text_)

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
