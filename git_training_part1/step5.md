#### Installer un Remote Repository GIT (interne)

Créer votre premier Remote Repository (Central)

 Se connecter à git:
   `su - git`{{execute T1}}

 Création d'un répertoire d'accueil du nouveau Remote Repository
`mkdir repo_central;cd repo_central`{{execute T1}}

 Lancement de l'installation:
  `git init --bare`{{execute T1}}

#### Créer un Repository local dans la VM1 pour les Développeurs du projet1 

 Lancement de l'installation Repository local1:
 `git init `{{execute T2}}
 
 Observer la création de première branche 'master' du Repository local:
 `git branch `{{execute T2}}
 
 Connecter ce Repository local avec le Remote (central):
 `git remote add origin ssh://git@git_remote/home/git/repo_central`{{execute T2}}

 Vérifier la connexion:
 `git remote -v`{{execute T2}}
 
 Et la présence du projet Commun Formation
  `ls`{{execute T2}}
  
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
