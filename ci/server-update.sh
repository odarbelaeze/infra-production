scp -o "StrictHostKeyChecking no" -i ci/keys/id_rsa -r balancer/ quotes/ root@$SERVER_IP:
ssh -o "StrictHostKeyChecking no" -i ci/keys/id_rsa root@$SERVER_IP 'docker stack deploy -c balancer/docker-compose.yml balancer'
ssh -o "StrictHostKeyChecking no" -i ci/keys/id_rsa root@$SERVER_IP 'docker stack deploy -c quotes/docker-compose.yml quotes'
