
Nous allons ouvrir 3 terminaux. Chaque terminal correspond à une VM ubuntu (Conteneur docker).

Lancer les commandes suivantes:

`r() { docker exec -it git_remote bash -c "cd /work_dir; echo 'PS1='\''git_remote# '\' >> /root/.bashrc; bash"; } && r`{{execute T1}}

`d1() { docker exec -it dev_local1 bash -c "cd /work_dir; echo 'PS1='\''git_local1# '\' >> /root/.bashrc; bash"; } && d1`{{execute T2}}

`d2() { docker exec -it dev_local2 bash -c "cd /work_dir; echo 'PS1='\''git_local2# '\' >> /root/.bashrc; bash"; } && d2`{{execute T3}}

##### _Remarque_:
Le prompt git_remote#, git_local1# et git_local2# vous aidera à repèrer la machine sur laquelle vous êtes connecté.

Si toutes fois vous êtes sortie avec un exit , vous pouvez taper les commandes suivantes:

- r  => Pour se connecter à la VM git_remote.
- d1 => Pour se connecter à la VM dev_local1.
- d2 => Pour se connecter à la VM dev_local2.
