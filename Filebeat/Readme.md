Build the image

docker build -t test/filebeat .

docker run -d -v D:\Wip\Practices\Github\Docker\JOSDockers\Filebeat\custom\app:c:\custom -v D:\Wip\Practices\Github\Docker\JOSDockers\Filebeat\testfiles:c:\files --link elasticsearch mydockercity/filebeatservercore

