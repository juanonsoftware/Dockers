What is this docker file?

Create a docker image based on Windows Server Nano and add two additional drives for general purpose L:\ (logs) and D:\ (data)

docker build -t test/nanoserverwithdrives .