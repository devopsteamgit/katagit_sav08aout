
Nous allons ouvrir 3 terminaux. Chaque terminal correspond à une VM ubuntu (Conteneur docker).

Lancer les commandes suivantes:

`a() { docker exec -it git_remote bash -c "cd /work_dir; echo 'PS1='\''git_remote# '\' >> /root/.bashrc; bash"; } && a`{{execute T1}}

`n1() { docker exec -it git_local1 bash -c "cd /work_dir; echo 'PS1='\''git_local1# '\' >> /root/.bashrc; bash"; } && n1`{{execute T2}}

`n2() { docker exec -it git_local2 bash -c "cd /work_dir; echo 'PS1='\''git_local2# '\' >> /root/.bashrc; bash"; } && n2`{{execute T3}}

##### _Remarque_:
Le prompt git_remote#, git_local1# et git_local2# vous aidera à repèrer la machine sur laquelle vous êtes connecté.

Si toutes fois vous êtes sortie avec un exit , vous pouvez taper les commandes suivantes:

- a  => Pour se connecter à la VM git_remote.
- n1 => Pour se connecter à la VM git_local1.
- n2 => Pour se connecter à la VM git_local2.
