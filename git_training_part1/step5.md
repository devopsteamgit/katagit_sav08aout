
#### (VM1) Installer un Repository GIT (Central) 

Se connecter au user 'git' puis créer un répertoire pour le Repository (Central)
  `su - git -c "mkdir formteam";su - git`{{execute T1}}
 
 Initialiser le Remote Repository
  `cd formteam;git init --bare`{{execute T1}}

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
 
** A présent, vous pouvez aussi effectuer des développements,
les commiter en local puis les pusher sur le repo distant: lorsque vous souhaiterez en faire bénéficier les autres équipes  **

 Créer un fichier script_test_vm2.sh
 `echo "printf 'Ceci est un script test\n'" > script_test_vm2.sh;cat script_test_vm2.sh`{{execute T2}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_test_vm2.sh `{{execute T2}}
 
 Commmiter (valider) la création du nouveau fichier: dans votre Repository local 
 `git commit -m "ajout du script_test_vm2.sh repo local VM2"`{{execute T2}}
   
 Vérifier la présence d'une nouvelle branche 'master' du repo local, qui contient le nouveau fichier:
 `git branch`{{execute T2}}
 
 "Pusher" le fichier de votre Repo local (VM2) --> vers Remote Repo Central (VM1)
 `git push origin master`{{execute T2}}
 
    ##### _Répondre:
           > Are you sure you want to continue connecting (yes/no)? 
                                                   -->  'yes'
 
 
           > git@git_remote's password: --> mot de passe: 
                                                  -->   'git'
 
 
 
 
#### (VM1) Constater que le commit a bien été effectué sur le Repository distant (central) 
 Constater que le commit a bien été effectué à distance
 `git log --oneline`{{execute T1}}




#### (VM3) Créer un second Repository local (pour les Développeurs travaillant sure cette VM)
 Se connecter à git:
 `su - git`{{execute T3}}
   
 Lancer l'installation du premier Repository local:
 `git init `{{execute T3}}
 
 Configurer le Git local (mail et username)
 `git config --global user.email "git@example.com";git config --global user.name "git Name";pwd;git config --list`{{execute T3}}   
 
 Connecter ce Repository local avec le Remote Repository (Central):
 `git remote add origin ssh://git@git_remote/home/git/formteam`{{execute T3}}

 Vérifier la connexion:
 `git remote -v`{{execute T3}}
 
** A présent, en tant que seconde équipe, vous pouvez aussi effectuer des développements,
les commiter en local puis les pusher sur le repo distant: lorsque vous souhaiterez en faire bénéficier les autres équipes  **
 Créer un fichier script_test_vm3.sh
 `echo "printf 'Ceci est un script test sur la VM3\n'" > script_test_vm3.sh;cat script_test_vm3.sh`{{execute T3}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_test_vm3.sh `{{execute T3}}
 
 Commmiter (valider) la création du nouveau fichier: dans votre Repository local 
 `git commit -m "ajout du script_test_vm3.sh repo local VM3"`{{execute T3}}
   
 Vérifier la présence du branche 'master' pour tracker ce fichier nouveau fichier ajouté:
 `git branch`{{execute T3}}
 
 "Pusher" le fichier de votre Repo local (VM3) --> vers Remote Repo Central (VM1)
 `git push origin master`{{execute T3}}
 
    ##### _Réponses:
           > Are you sure you want to continue connecting (yes/no)? 
                                                   -->  'yes'
 
 
           > git@git_remote's password: --> mot de passe: 
                                                  -->   'git'
 
 
 
 
#### (VM1) Constater que ce second commit (de la seconde équipe) a bien été "pushé" sur le Repository distant (central) 
 Constater que le commit a bien été effectué à distance
 `git log --oneline`{{execute T1}}

