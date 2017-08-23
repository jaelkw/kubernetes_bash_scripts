Step 1: Go follow the other parts and install kubernetes and kubeadm etc etc first.

When you've launched a kubeadm node, then they'll prompt you with this:
You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  http://kubernetes.io/docs/admin/addons/


So this is a run through of how I've set up WeaveNet, which is my choice of pod network.

$ kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
