"4. creating cluster > " + (Get-Date).ToString()
gcloud container clusters create win-cluster --cluster-version=1.16.13 --enable-ip-alias --num-nodes=1 --zone=us-central1-c

"5. get credentials for the newly created cluster > " + (Get-Date).ToString()
gcloud container clusters get-credentials win-cluster --zone=us-central1-c

"6. Adding Windows pool > " + (Get-Date).ToString()
gcloud container node-pools create windows-pool --cluster=win-cluster --image-type=WINDOWS_SAC --no-enable-autoupgrade --machine-type=n1-standard-2 --zone=us-central1-c --num-nodes=1 --disk-size=60GB

#6.adding a yaml file

"7. apply the file > " + (Get-Date).ToString()
kubectl apply -f aspnetmvc-windows1.yaml

"8. Create a Kubernetes service > " + (Get-Date).ToString()
kubectl expose deployment aspnetmvc --type="LoadBalancer"

"get the external IP" + (Get-Date).ToString()
kubectl get service

#Scale up:
#kubectl scale deployment aspnetmvc --replicas=4
