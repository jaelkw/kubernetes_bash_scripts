Step 1:
$ sudo su

Step 2:
$ chmod a+x kubernetes_setup.sh

Step 3:
$ ./kubernetes_setup.sh

Step 4: exit root
ctrl-D

$ sudo kubeadm init
==> take note of the token at the end, so that slave nodes can join the cluster.

$ kubectl get node

To set up weave (can use others, but note that this can only be done once. otherwise in the future will give alot of problems)

$ kubectl apply -f https://git.io/weave-kube
