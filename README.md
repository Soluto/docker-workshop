#### A nice, clean, elasticsearch instance is starting up.
`docker run --rm=true elasticsearch`

#### This instance is closed to the outside world, let's open it up
`docker run -p 9200:9200 --name elastic-docker --rm=true elasticsearch`

#### Peak into elasticsearch dockerfile
[It's in ./Advanced/Dockerfile-elasticsearch](https://github.com/docker-library/elasticsearch/blob/f9b79ebc2e8fd42372b8f302321585c4d09f9ccc/5/Dockerfile)

#### Let's see if there are any indexes inside our elasticsearch cluster
`curl localhost:9200/_cat/indices`

#### Now, creating a dockerfile
<Use dockerfile in repo as template>

#### And building the image from the dockerfile
`docker build -t node-es-client .`

#### Launch a container based on the image built
`docker run --name node-docker --rm=true node-es-client`

#### It fails, so let's add a link
`docker run -p 5858:5858 --name node-docker --link elastic-docker:elastic-docker --rm=true node-es-client`

#### Let's check again for indexes
`curl localhost:9200/_cat/indices`

#### Debug application
`cd debug-example && docker-compose up`
https://blog.docker.com/2016/07/live-debugging-docker/