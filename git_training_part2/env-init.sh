ssh host01;
docker network create mynetwork;
docker pull testgitessai/ubuntu:18.04;
docker run -dt -p 0.0.0.0:2256:22 --name dev1_git_local  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;
docker exec dev1_git_local bash -c "apt-get update && chmod 777 /work_dir/training-files;service ssh restart";
docker inspect dev1_git_local  | grep  \"IPAddress\" | sed -e "s/ //g" | grep -v \"\"  | awk -F ":" '{print $2" dev1_git_local"}'  | sed  -e "s/\"//g" | sed -e "s/,//g" >>/tmp/tempo_hosts
docker cp /tmp/tempo_hosts dev1_git_local:/tmp/tempo_hosts
docker exec dev1_git_local bash -c "cat /tmp/tempo_hosts >>/etc/hosts"

docker exec  dev1_git_local bash -c "mkdir /home/repofiles;cd /home/repofiles;git init;git config --list; git config --global user.email \"git@example.com\";git config --global user.name  Name";
docker exec  dev1_git_local bash -c "cd /home/repofiles;git remote add origin https://github.com/testgitpub/testfiles.git;git pull origin master";

docker exec  dev1_git_local bash -c "su - git -c \"git init;git config --list; git config --global user.email \"git@example.com\";git config --global user.name  Name\"";
sleep 5
docker exec  dev1_git_local bash -c "su - git -c \"cp /home/repofiles/files/script_*.sh .;git add --all ;git commit -a -m 'ajout script_1.sh'\"";
#docker exec  dev1_git_local bash -c "su - git -c \"cp /home/repofiles/files/script_1.sh .;git add --all ;git commit -a -m 'ajout script_1.sh'\"";
#docker exec  dev1_git_local bash -c "su - git -c \"cp /home/repofiles/files/script_2.sh .;git add --all ;git commit -a -m 'ajout script_2.sh'\"";
#docker exec  dev1_git_local bash -c "su - git -c \"cp /home/repofiles/files/script_3.sh .;git add --all ;git commit -a -m 'ajout script_3.sh'\"";
#docker exec  dev1_git_local bash -c "su - git -c \"cp /home/repofiles/files/script_5.sh .;git add --all ;git commit -a -m 'ajout script_5.sh'\"";
#docker exec  dev1_git_local bash -c "su - git -c \"cp /home/repofiles/files/script_6.sh .;git add --all ;git commit -a -m 'ajout script_6.sh'\"";
#docker exec  dev1_git_local bash -c "su - git -c \"cp /home/repofiles/files/script_4.sh .;git add --all ;git commit -a -m 'ajout script_4.sh'\"";


