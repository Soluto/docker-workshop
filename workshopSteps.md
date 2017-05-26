# A nice, clean, elasticsearch instance is starting up.
docker run elasticsearch
# This instance is closed to the outside world, let's open it up
docker run -p 9200:9200 --name elastic-docker elasticsearch
# Peak into elasticsearch dockerfile
<It's in ./Advanced/Dockerfile-elasticsearch
# Let's see if there are any indexes inside our elasticsearch cluster
curl localhost:9200/_cat/indices
# Now, creating a dockerfile
<Use dockerfile in repo as template>
# And building the image from the dockerfile
docker build -t node-es-client .
# Launch a container based on the image built
docker run --name node-docker node-es-client
# It fails, so let's add a link
docker run --name node-docker --link elastic-docker:elastic-docker node-es-client
# Let's check again for indexes
curl localhost:9200/_cat/indices
