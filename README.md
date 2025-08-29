# ngrok-docker-setup
allow to port forward on local machine port for access webservices via ngrok domain

# How to start docker port forward server
copy and past the ngrok.yml and dockerfile into your current repo and run below command

docker build -t ngrok-tunnel .

docker run --rm -it -v $(pwd)/ngrok.yml:/root/.ngrok2/ngrok.yml ngrok-tunnel start --all
