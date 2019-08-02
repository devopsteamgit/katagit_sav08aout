ssh host01;
docker network create mynetwork;
docker pull testgitessai/ubuntu:18.04;
docker run -dt -p 0.0.0.0:2256:22 --name dev1_git_local  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;
docker exec dev1_git_local bash -c "apt-get update && chmod 777 /work_dir/training-files;service ssh restart";

docker inspect dev1_git_local  | grep  \"IPAddress\" | sed -e "s/ //g" | grep -v \"\"  | awk -F ":" '{print $2" dev1_git_local"}'  | sed  -e "s/\"//g" | sed -e "s/,//g" >>/tmp/tempo_hosts
docker cp /tmp/tempo_hosts dev1_git_local:/tmp/tempo_hosts

docker exec -it  dev1_git_local bash -c "cat /tmp/tempo_hosts >>/etc/hosts"
