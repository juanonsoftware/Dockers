"9. Clean up" + (Get-Date).ToString()
"Delete service & deployment > " + (Get-Date).ToString()
kubectl delete service,deployment aspnetmvc

"Delete cluster > " + (Get-Date).ToString()
gcloud container clusters delete win-cluster --zone=us-central1-c