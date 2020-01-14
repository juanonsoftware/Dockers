Build a docker image to run Kibana under Windows Server Core

To start a container, use below command (change image id)

docker run -d --link elasticsearch --name kibana -p 5601:5601 993910ff7f54

docker build -t test/kibanaservercore .