# A demo localstack integration 

A demo localstack integration showing a sample nodejs application and lambda dev environment contained in a single dockercompose instance.


### Installation ###
- [Setup Docker on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04)
- [Setup docker-compose on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04)

### Setup ###
Spin up the stack
```console
git submodule init
git submodule update
export UID=$UID
docker-compose build
docker-compose up
```
Then connect to the lambda sdk container
```console
docker-compose exec demo_localstack_serverless /bin/bash
```
Finally, you can create and publish a lambda like this
```console
sls create -t aws-nodejs -p helloworld -n helloworld
cd helloworld
sls invoke local -f hello
sls deploy --stage local
sls invoke --stage local -f hello
awslocal lambda list-functions
```
