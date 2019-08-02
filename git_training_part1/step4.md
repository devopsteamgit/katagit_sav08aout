
Nous allons ouvrir 1 terminal. Qui contiendra notre Repository local et nos premiers développements.

Vérifier que l'environnement de formation est prêt:

`if [ $(docker ps  | grep -v CONTAINER | wc -l) -ge 3 ]; then echo "OK"; else echo "Attendre 30s!";sleep 30;  fi`{{execute T1}}

Puis, lancer les commandes suivantes:

#`g() { docker exec -it git_remote bash -c "cd /work_dir; echo 'PS1='\''git_remote# '\' >> /root/.bashrc; bash"; } && g`{{execute T1}}

`d1() { docker exec -it dev1_local bash -c "cd /work_dir; echo 'PS1='\''dev1_gitlocal# '\' >> /root/.bashrc; bash"; } && d1`{{execute T2}}

#`d2() { docker exec -it dev2_local bash -c "cd /work_dir; echo 'PS1='\''dev2_gitlocal# '\' >> /root/.bashrc; bash"; } && d2`{{execute T3}}

##### _Remarque_:
Le prompt dev1_git_local#  vous aidera à repèrer la machine sur laquelle vous êtes connecté.

Si toutes fois vous êtes sortie avec un exit , vous pouvez taper les commandes suivantes:

# g  => Pour se connecter à la VM 'git_remote'.
d1 => Pour se connecter à la VM 'dev1_gitlocal'.
# d2 => Pour se connecter à la VM 'dev2_gitlocal'.
