"=> Resize a cluster / pool" + (Get-Date).ToString()
gcloud container clusters resize win-cluster --node-pool=windows-pool --num-nodes=1 --zone=us-central1-c -q
