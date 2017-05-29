#### STEP 1. A nice, clean, elasticsearch instance is starting up.
`docker run --rm=true elasticsearch`

#### STEP 2. This instance is closed to the outside world, let's open it up
`docker run -p 9200:9200 --name elastic-docker --rm=true elasticsearch`

#### STEP 3. Check connectivity to elasticsearch
`curl localhost:9200
`
#### STEP 4. Let's Peak into elasticsearch dockerfile
[It's in ./Advanced/Dockerfile-elasticsearch](https://github.com/docker-library/elasticsearch/blob/f9b79ebc2e8fd42372b8f302321585c4d09f9ccc/5/Dockerfile)

#### STEP 5. Check if there are any indexes inside our elasticsearch cluster
`curl localhost:9200/_cat/indices`

#### STEP 6. Now, creating a dockerfile
<Use dockerfile in repo as template>

#### STEP 7. And building the image from the dockerfile
`docker build -t node-es-client .`

#### STEP 8. Launch a container based on the image built
`docker run --it --name node-docker --link elastic-docker:elastic-docker --rm=true node-es-client`

#### STEP 9.  Let's check again for indexes
`curl localhost:9200/_cat/indices`

#### STEP 10. Check out Docker-compose.yml
<It's in the repo root dir>

#### STEP 11. Watch as I Debug an application
`cd debug-example && docker-compose up`
https://blog.docker.com/2016/07/live-debugging-docker/
