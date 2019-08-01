#### Installer votre Remote Repository GIT "Central" sur Site

 Se connecter au compte git:
   `su - git`{{execute T1}}

 Créer un répertoire où sera installé le Remote Repository
`mkdir repo_central;cd repo_central`{{execute T1}}

 Lancer son installation:
  `git init --bare`{{execute T1}}

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
