kubectl apply -f redis-master-deployment.yaml
kubectl get pods  

kubectl logs -f [POD-NAME]



kubectl apply -f redis-master-service.yaml
kubectl get service



kubectl apply -f redis-slave-deployment.yaml
kubectl get pods


kubectl apply -f redis-slave-service.yaml


kubectl apply -f frontend-deployment.yaml
kubectl get pods -l app=guestbook -l tier=frontend



kubectl apply -f frontend-service.yaml
