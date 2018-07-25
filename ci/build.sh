docker-machine create \
    --driver digitalocean \
    --digitalocean-image ubuntu-16-04-x64 \
    --digitalocean-ssh-key-fingerprint 44:39:57:67:8c:65:69:92:ba:e1:ca:e3:86:e5:5b:23 \
    --digitalocean-ssh-key-path ci/keys/id_rsa \
    --digitalocean-access-token $DOTOKEN \
    manager

docker-machine ssh manager \
    "docker swarm init --listen-addr $(docker-machine ip manager) --advertise-addr $(docker-machine ip manager)"
