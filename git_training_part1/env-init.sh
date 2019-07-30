ssh host01;
docker network create mynetwork;
docker pull 22072017/ubuntu:16.04;
docker run -dt --name git_remote  --network mynetwork -v /root:/work_dir/training-files 22072017/ubuntu:16.04 /bin/bash;
docker run -dt --name dev1_local  --network mynetwork -v /root:/work_dir/training-files 22072017/ubuntu:16.04 /bin/bash;
docker run -dt --name dev2_local  --network mynetwork -v /root:/work_dir/training-files 22072017/ubuntu:16.04 /bin/bash;
docker exec git_remote bash -c "apt-get update && chmod 777 /work_dir/training-files";
docker exec dev1_local bash -c "apt-get update && chmod 777 /work_dir/training-files";
docker exec dev2_local bash -c "apt-get update && chmod 777 /work_dir/training-files";
