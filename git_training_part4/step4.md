#### (VM1) Installer un Repository GIT (Central) 
 
 Vérifier l'accessibilité du Remote Repository
`cd repocentral;git status`{{execute T1}}

#### (VM2) Créer un Repository 'local' -cette fois-ci-, afin de versionner les développements en local sur la VM

 
** Développer sur la VM2, puis versionner (première équipe)**
 
 A présent, vous pouvez  effectuer des développements.
 Les commiter en local puis les pusher sur le repo distant (lorsque vous souhaiterez en faire bénéficier les autres équipes).  

 - Créer un fichier script_vm2_1.sh
 `echo "printf 'Ceci est un script test\n'" > script_vm2_1.sh;cat script_vm2_1.sh`{{execute T2}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_vm2_1.sh `{{execute T2}}
 
 Commmiter (valider) la création du nouveau fichier: dans votre Repository local 
 
 `git commit -m "ajout du script_vm2_1.sh repo local VM2"`{{execute T2}}
   
 Vérifier la présence d'une nouvelle branche 'master' du repo local. Elle contient le nouveau fichier.
 `git branch`{{execute T2}}
 
 "Pusher" le fichier de votre Repo local (VM2) --> vers Remote Repo Central (VM1)
 `git push origin master`{{execute T2}}
 
    ##### _Répondre:
           > Are you sure you want to continue connecting (yes/no)? 
                                                       -->  'yes'
 
           > git@git_remote's password: 
                                   -->   'git'
 
 
 
 
#### (VM1) Constater que le développement a bien été "pushé" sur le Repository distant (central) 
 Constater que le script et sont commit a bien été pushé sur le repo distant
 `git log --oneline`{{execute T1}}




#### (VM3) Créer un second Repository 'local': pour la seconde équipe de développement sur cette VM

 Se connecter à git:
 `su - git`{{execute T3}}
   
 Lancer l'installation du second Repository 'local':
 `git init `{{execute T3}}
 
 Configurer le Git local (mail et username)
 `git config --global user.email "git@example.com";git config --global user.name "git Name";pwd;git config --list`{{execute T3}}   
 
 Connecter ce Repository local avec le Remote Repository (Central):
 `git remote add origin ssh://git@git_remote/home/git/formteam`{{execute T3}}

 Vérifier la connexion:
 `git remote -v`{{execute T3}}
 
 Pour commencer, récupèrer  les développements mis à disposition par les autres équipes sur le Repo distant
  `git pull origin master`{{execute T3}}
 
** Développer sur la VM3, puis versionner (seconde équipe)**

 A présent, en tant que seconde équipe, vous pouvez également effectuer des développements.
 Les commiter en local puis les pusher sur le repo distant (lorsque vous souhaiterez en faire bénéficier les autres équipes).  
 
 -Créer un fichier script_vm3_2.sh
 `echo "printf 'Ceci est un script test sur la VM3\n'" > script_vm3_2.sh;cat script_vm3_2.sh`{{execute T3}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_vm3_2.sh `{{execute T3}}
 
 Commmiter (valider) la création du nouveau fichier: dans votre Repository local 
 `git commit -m "ajout du script_vm3_2.sh repo local VM3"`{{execute T3}}
   
 Vérifier la présence du branche 'master' pour tracker ce fichier nouveau fichier ajouté:
 `git branch`{{execute T3}}
 
 "Pusher" le fichier de votre Repo local (VM3) --> vers Remote Repo Central (VM1)
 `git push origin master`{{execute T3}}
 
    ##### _Répondre:
           > Are you sure you want to continue connecting (yes/no)? 
                                                       -->  'yes'
 
           > git@git_remote's password: 
                                   -->   'git'
 
 
 
 
 
#### (VM1) Constater que le second développement (seconde équipe) a bien été "pushé" sur le Repository distant (central) 

 Constater que le script et sont commit a bien été pushé sur le repo distant
 `git log --oneline`{{execute T1}}
 
 Vous pouvez également consulter toutes les mises à jour qui ont été faites sur le Repo central depuis le début
 `git log`{{execute T1}}
