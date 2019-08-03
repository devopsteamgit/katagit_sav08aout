ssh host01;
docker network create mynetwork;
docker pull testgitessai/ubuntu:18.04;
docker run -dt -p 0.0.0.0:2256:22 --name dev1_git_local  --network mynetwork -v /root:/work_dir/training-files testgitessai/ubuntu:18.04 /bin/bash;

docker exec  dev1_git_local bash -c "su - git -c \"mkdir repo;cd repo;git init;git config --list; git config --global user.email \"git@example.com\";git config --global user.name  Name\"";
docker exec  dev1_git_local bash -c "su - git -c \"cd repo;git add --all ;git commit -a -m 'creation branch master';mkdir repo/PROJET\"";

docker exec  dev1_git_local bash -c "su - git -c \"mkdir repofiles;cd repofiles;git init;git config --list; git config --global user.email \"git@example.com\";git config --global user.name  Name\"";
docker exec  dev1_git_local bash -c "su - git -c \"cd repofiles;git remote add origin https://github.com/testgitpub/testfiles.git;git pull origin master\"";
https://github.com/testgitpub/testfiles.git
