Two steps to create:
1. Write a yaml file, like the one in this directory (nginx-deployment.yaml)
2. Use a kubectl create command in the kubectl CLI, passing the .yaml file as an argument

$ kubectl create -f nginx-deployment.yaml --record


Required values for .yaml file
- apiVersion: Which version of Kubernetes API using to create the object
- kind: What kind of object wanna create
- metadata: Data that helps uniquely identify the object, including a 'name' string, UID, and optional 'namespace'
- provide object 'spec' field. Precise format of the object 'spec' different for every kubernetes object, and contains nested fields specific to that object.
- ref https://kubernetes.io/docs/api/ for spec format for all of the objects that can be created via Kubernetes
