https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04
UID=${UID} docker-compose build
docker-compose exec demo_localstack_serverless /bin/bash

sls create -t aws-nodejs -p helloworld -n helloworld
cd helloworld
sls invoke local -f hello
sls deploy --stage local
sls invoke --stage local -f hello