#### Installer GIT

Créer votre premier remote Repository 

- Se connecter à git
`su - git`{{execute T1}}

-Création de son répoertoire
`mkdir repo_central`{{execute T1}}
`cd repo_central`{{execute T1}}

-Lancement de la création
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
