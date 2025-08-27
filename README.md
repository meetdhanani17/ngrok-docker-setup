# ngrok-docker-setup
allow to port forward on local machine port for access webservices via ngrok domain

# How to start docker port forward server

docker build -t ngrok-tunnel .

docker run --rm -it \
  -v $(pwd)/ngrok.yml:/root/.ngrok2/ngrok.yml \
  ngrok-tunnel start --all
