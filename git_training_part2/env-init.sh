ssh host01;
docker network create mynetwork;
docker pull testgitessai/ubuntu:18.04;
docker run -dt -p 0.0.0.0:2256:22 --name dev1_git_local  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;
docker exec dev1_git_local bash -c "apt-get update && chmod 777 /work_dir/training-files;service ssh restart";
docker inspect dev1_git_local  | grep  \"IPAddress\" | sed -e "s/ //g" | grep -v \"\"  | awk -F ":" '{print $2" dev1_git_local"}'  | sed  -e "s/\"//g" | sed -e "s/,//g" >>/tmp/tempo_hosts
docker cp /tmp/tempo_hosts dev1_git_local:/tmp/tempo_hosts
docker exec dev1_git_local bash -c "cat /tmp/tempo_hosts >>/etc/hosts"

#docker exec  dev1_git_local bash -c "su - git -c \"git init;git config --list; git config --global user.email \"git@example.com\";git config --global user.name  Name\"";
#docker exec  dev1_git_local bash -c "su - git -c \"git add --all ;git commit -a -m 'creation branch master';mkdir PROJET\"";

#docker exec dev1_git_local bash -c "su - git -c \"git init;git config --global user.email \"git@example.com\";git config --global user.name \"git Name\";git add --all ;git commit -a -m \"creation branch master \";mkdir PROJET\"";
#docker exec dev1_git_local bash -c "su - git -c \"echo \"printf 'Ceci est un script test\n\'\" > script_1.sh;cat script_1.sh\";git add script_1.sh;git commit -m 'ajout du script_1.sh dans le repo '";

docker exec  dev1_git_local bash -c "su - git -c \"mkdir repofiles;cd repofiles;git init;git config --list; git config --global user.email \"git@example.com\";git config --global user.name  Name\"";
docker exec  dev1_git_local bash -c "su - git -c \"cd repofiles;git remote add origin https://github.com/testgitpub/testfiles.git;git pull origin master\"";

docker exec  dev1_git_local bash -c "su - git -c \"cp ../repofiles/files/cdfic .'\"";


docker exec  dev1_git_local bash -c "su - git -c \"mkdir PROJET;cd PROJET;git init;git config --list; git config --global user.email \"git@example.com\";git config --global user.name  Name\"";
docker exec  dev1_git_local bash -c "su - git -c \"cd PROJET;cp ../repofiles/files/script_1.sh .;git add --all ;git commit -a -m 'ajout script_1.sh'\"";
docker exec  dev1_git_local bash -c "su - git -c \"cd PROJET;cp ../repofiles/files/script_2.sh .;git add --all ;git commit -a -m 'ajout script_2.sh'\"";

