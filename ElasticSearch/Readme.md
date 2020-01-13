Build a docker image to run ElasticSearch under Windows Server Core

To build the image

docker build -t test/elasticsearch -f DockerfileReducedLayers .

To start a container, use below command (change image id if needed)

docker run -d -p 9200:9200 -p 9300:9300 --name elasticsearch 45d54f292915

(use --net network1 to set a network)

