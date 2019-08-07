#### (VM1) Vérificer le Repository GIT Central 
 
 Vérifier la connexion au Repository Central
`cd repocentral`{{execute T1}}


#### VM2 (équipe 1) Développe sur son Repository Local
 
Dans le cours précédent, nous avions effecctué la connexion du Repository Local au Repository Distant,
Vérifier que cela est bien le cas
 `git remote -v`{{execute T2}}
 
  
a présent, en tant que première équipe, vous allez effectuer vos développements.Et les commiter en local.  

 - Créer un fichier script_vm2_1.sh
 `echo "printf 'Ceci est un script test\n'" > script_vm2_1.sh;cat script_vm2_1.sh`{{execute T2}}
 
 Ajouter le fichier dans la cache "Staging Area"
 `git add script_vm2_1.sh `{{execute T2}}
 
 Commmiter (valider) la création du nouveau fichier: dans votre Repository local 
 
 `git commit -m "ajout du script_vm2_1.sh repo local VM2"`{{execute T2}}
   
 Vérifier le nouveau commmit
 `git log --oneline`{{execute T2}}
 
 
 Vérifier la présence d'une nouvelle branche 'master' du repo local. Elle contient le nouveau fichier.
 `git branch`{{execute T2}}

__(à ce stade, nous ne "pushons" pas encore nos développement vers le Repository Central): ceci afin de laisser l'autre équipe faire évoluer le Central avant nous et ainsi nous causer un conflit plus tard__
 
 
#### (VM1) Constater que le développement n'a pas encore été "pushé" sur le Repository Distant (central) 
 Constater que le script n'est pas présent
 `git log --oneline`{{execute T1}}




#### VM3 (équipe 2) Développe sur son Repository Local

Dans le cours précédent, nous avions effecctué la connexion du Repository Local au Repository Distant,
Vérifier que cela est bien le cas
 `git remote -v`{{execute T3}}
 
 Récupèrer  les développements mis à disposition par les autres équipes sur le Repo Distant
  `git pull origin master`{{execute T3}}
 
 
A présent, en tant que seconde équipe, vous allez effectuer vos développements.
Les commiter en local puis les pusher sur le repo distant (pour les mettres à disposition des autres équipes).  
 
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
 
   
 
#### VM1 (Repo Central) Constater que le second développement (seconde équipe) a bien été "pushé" sur le Repository distant (central) 

 Constater que le script et sont commit a bien été pushé sur le repo distant
 `git log --oneline`{{execute T1}}
 
 Vous pouvez également consulter toutes les mises à jour qui ont été faites sur le Repo central depuis le début
 `git log`{{execute T1}}

#### LE COMMIT/PUSH de la dernière équipe va créer un conflit pour la première


 #### VM2 (équipe 1)Constate le conflit et le gère
  
 "Pusher" le fichier de votre Repo local (VM2) --> vers Remote Repo Central (VM1)
 `git push origin master`{{execute T2}}
 
    ##### _Répondre:
           > Are you sure you want to continue connecting (yes/no)? 
                                                       -->  'yes'
 
           > git@git_remote's password: 
                                   -->   'git'
 
 
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
 
 "Pusher" le fichier de votre Repo local
