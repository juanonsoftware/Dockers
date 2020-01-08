Build a docker image to run ElasticSearch under Windows Server Core

To start a container, use below command (change image id if needed)

docker run -d -p 9200:9200 -p 9300:9300 --name elasticsearch f93901e352a0

(use --net network1 to set a network)
