ssh host01;
docker network create mynetwork;
docker pull testgitessai/ubuntu:18.04;
docker run -dt -p 0.0.0.0:2255:22 --name git_remote  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;
docker run -dt -p 0.0.0.0:2256:22 --name dev1_local  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;
docker run -dt -p 0.0.0.0:2257:22 --name dev2_local  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;
docker exec git_remote bash -c "apt-get update && chmod 777 /work_dir/training-files";
docker exec dev1_local bash -c "apt-get update && chmod 777 /work_dir/training-files";
docker exec dev2_local bash -c "apt-get update && chmod 777 /work_dir/training-files";
