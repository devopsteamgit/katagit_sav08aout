
Nous allons ouvrir 3 terminaux. Chaque terminal correspond à une VM ubuntu (Conteneur docker).

Lancer les commandes suivantes:

`a() { docker exec -it ansible_node bash -c "cd /work_dir; echo 'PS1='\''ansible# '\' >> /root/.bashrc; bash"; } && a`{{execute T1}}

`n1() { docker exec -it managed_node1 bash -c "cd /work_dir; echo 'PS1='\''managed_node1# '\' >> /root/.bashrc; bash"; } && n1`{{execute T2}}

`n2() { docker exec -it managed_node2 bash -c "cd /work_dir; echo 'PS1='\''managed_node2# '\' >> /root/.bashrc; bash"; } && n2`{{execute T3}}

##### _Remarque_:
Le prompt ansible#, managed_node1# et managed_node2# vous aidera à repèrer la machine sur laquelle vous êtes connecté.

Si toutes fois vous êtes sortie avec un exit , vous pouvez taper les commandes suivantes:

- a  => Pour se connecter à la VM ansible_node.
- n1 => Pour se connecter à la VM managed_node1.
- n2 => Pour se connecter à la VM managed_node2.
