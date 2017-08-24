Pre-check - Ensure you've the following files:

1. redis-mater-deployment.yaml
2. redis-master-service.yaml
3. redis-slave-deployment.yaml
4. redis-slave-service.yaml
5. frontend-deployment.yaml
6. frontend-service.yaml

Create Redis Master Deployment
$ kubectl apply -f redis-master-deployment.yaml
$ kubectl get pods  
--> verify that the Redis master pod has run
$ kubectl logs -f [POD-NAME]
--> to view logs from the Redis Mater Pod. POD-NAME is obtained from $ kubectl get pods

Apply Redis Master Service to proxy traffic to the Redis master pod
$ kubectl apply -f redis-master-service.yaml
$ kubectl get service
--> ensure redis-master is there.

Create Redis Slave Deployment
$ kubectl apply -f redis-slave-deployment.yaml
$ kubectl get pods

Create Redis slave service --> provides load balancing to the set of pods
$ kubectl apply -f redis-slave-service.yaml

Create Guestbook Frontend Deployment
$ kubectl apply -f frontend-deployment.yaml
$ kubectl get pods -l app=guestbook -l tier=frontend
--> A form of querying a more specific subset of $ kubectl get pods

Create Frontend Service
$ kubectl apply -f frontend-service.yaml

To delete a service:
$ kubectl delete services [service name]
