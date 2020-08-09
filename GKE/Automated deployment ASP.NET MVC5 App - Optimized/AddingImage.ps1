"=> build a docker image > " + (Get-Date).ToString()
docker pull mydockercity/aspnetmvcminimal:v1

"=> tag a docker image to gcr > " + (Get-Date).ToString()
#https://cloud.google.com/container-registry/docs/pushing-and-pulling
docker tag mydockercity/aspnetmvcminimal:v1 gcr.io/thermal-hour-280110/aspnetmvcminimal:v1

"=> push image > " + (Get-Date).ToString()
#(run "gcloud auth login" to authenticate)
docker push gcr.io/thermal-hour-280110/aspnetmvcminimal:v1