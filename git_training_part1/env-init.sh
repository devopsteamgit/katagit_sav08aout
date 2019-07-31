ssh host01;
docker network create mynetwork;
docker pull testgitessai/ubuntu:18.04;
docker run -dt -p 0.0.0.0:2255:22 --name git_remote  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;
docker run -dt -p 0.0.0.0:2256:22 --name dev1_local  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;
docker run -dt -p 0.0.0.0:2257:22 --name dev2_local  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;
docker exec git_remote bash -c "apt-get update && chmod 777 /work_dir/training-files";
docker exec dev1_local bash -c "apt-get update && chmod 777 /work_dir/training-files";
docker exec dev2_local bash -c "apt-get update && chmod 777 /work_dir/training-files";

docker inspect git_remote  | grep  \"IPAddress\" | sed -e "s/ //g" | grep -v \"\"  | awk -F ":" '{print $2" git_remote"}'  | sed  -e "s/\"//g" | sed -e "s/,//g" >/tmp/tempo_hosts 
docker inspect dev1_local  | grep  \"IPAddress\" | sed -e "s/ //g" | grep -v \"\"  | awk -F ":" '{print $2" dev1_local"}'  | sed  -e "s/\"//g" | sed -e "s/,//g" >>/tmp/tempo_hosts
docker inspect dev2_local  | grep  \"IPAddress\" | sed -e "s/ //g" | grep -v \"\"  | awk -F ":" '{print $2" dev2_local"}'  | sed  -e "s/\"//g" | sed -e "s/,//g" >>/tmp/tempo_hosts
docker cp /tmp/tempo_hosts git_remote:/tmp/tempo_hosts
docker cp /tmp/tempo_hosts dev1_local:/tmp/tempo_hosts
docker cp /tmp/tempo_hosts dev2_local:/tmp/tempo_hosts

docker exec -it  git_remote bash -c "cat /tmp/tempo_hosts >>/etc/hosts"
docker exec -it  dev1_local bash -c "cat /tmp/tempo_hosts >>/etc/hosts"
docker exec -it  dev2_local bash -c "cat /tmp/tempo_hosts >>/etc/hosts"
