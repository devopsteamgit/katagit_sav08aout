


#### Créer un Repository 'local' afin de versionner les développements en local sur la VM

 Se connecter à git:
 `su - git`{{execute T1}}
   
 Lancer l'installation du premier Repository 'local':
 `git init `{{execute T1}}
 
 Configurer le Git local (mail et username)
 `git config --global user.email "git@example.com";git config --global user.name "git Name";pwd;git config --list`{{execute T1}   
 
 
** L'équipe peut à présent développer sur la VM, puis versionner dans le repository précédemment créé **
 
 A présent, vous pouvez créer une branche de développement
 `git beanch dev `{{execute T1}}

 - Créer un fichier script_test_vm2.sh
 `echo "printf 'Ceci est un script test\n'" > script_test_vm2.sh;cat script_test_vm2.sh`{{execute T2}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_test_vm2.sh `{{execute T2}}
 
 Commmiter (valider) la création du nouveau fichier: dans votre Repository local 
 
 `git commit -m "ajout du script_test_vm2.sh repo local VM2"`{{execute T2}}
   
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
 
 -Créer un fichier script_test_vm3.sh
 `echo "printf 'Ceci est un script test sur la VM3\n'" > script_test_vm3.sh;cat script_test_vm3.sh`{{execute T3}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_test_vm3.sh `{{execute T3}}
 
 Commmiter (valider) la création du nouveau fichier: dans votre Repository local 
 `git commit -m "ajout du script_test_vm3.sh repo local VM3"`{{execute T3}}
   
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

