"=> apply the file > " + (Get-Date).ToString()
kubectl apply -f aspnetmvc-windows1.yaml

"=> Create a Kubernetes service > " + (Get-Date).ToString()
kubectl expose deployment aspnetmvc --type="LoadBalancer"