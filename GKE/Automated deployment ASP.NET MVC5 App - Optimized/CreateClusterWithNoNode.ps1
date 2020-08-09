"=> Creating a cluster with no node > " + (Get-Date).ToString()
gcloud container clusters create win-cluster --cluster-version=1.16.13 --enable-ip-alias --num-nodes=0 --zone=us-central1-c

"=> get credentials for the newly created cluster > " + (Get-Date).ToString()
gcloud container clusters get-credentials win-cluster --zone=us-central1-c

"=> Adding a Windows pool with no node > " + (Get-Date).ToString()
gcloud container node-pools create windows-pool --cluster=win-cluster --image-type=WINDOWS_SAC --no-enable-autoupgrade --machine-type=n1-standard-2 --zone=us-central1-c --num-nodes=0 --disk-size=60GB
