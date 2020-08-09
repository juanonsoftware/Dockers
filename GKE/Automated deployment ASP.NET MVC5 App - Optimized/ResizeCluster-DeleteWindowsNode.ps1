"Delete nodes by resize cluster > " + (Get-Date).ToString()
gcloud container clusters resize win-cluster --node-pool=windows-pool --num-nodes=0 --zone=us-central1-c -q
