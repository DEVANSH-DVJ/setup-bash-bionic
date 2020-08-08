## Start IITB VPN

docker login docker.cse.iitb.ac.in
## Prompt for Login

docker pull docker.cse.iitb.ac.in/cs293;
xhost +;
docker run --name cs293 -it --net=host --env="DISPLAY" -v "$HOME:/host" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" docker.cse.iitb.ac.in/cs293;
## Press Ctrl+D to exit and continue
docker start cs293;
docker exec -it cs293 /bin/bash;
## Press Ctrl+D to exit and continue

docker pull docker.cse.iitb.ac.in/cs251;
xhost +;
docker run --name cs251 -it --net=host --env="DISPLAY" -v "$HOME:/host" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" docker.cse.iitb.ac.in/cs251;
## Press Ctrl+D to exit and continue
docker start cs251;
docker exec -it cs251 /bin/bash;
## Press Ctrl+D to exit and continue
