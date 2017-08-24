Issue 1: Resolved

Node forever in NotReady State

NetworkReady=false reason:NetworkPluginNotReady message:docker: network plugin is not ready: cni config uninitialized

Solution:https://github.com/kubernetes/kubernetes/issues/43815

$ kubeadm reset
remove ENV entires from /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
$ systemctl daemon-reload
$ systemctl restart kubelet.service

$ sudo kubeadm init

Issue 2: Resolved

How to reset Kuberneates

$ rm admin.conf (go look for it)
==> Otherwise, may come into certificate authority issues. Alternatively, can try resetting without doing this first, then do this step and reset it again if you run into the same issues

then do as above in issue 1, with kubeadm reset , and so on.


Issue 3: Unresolved

Trying to set up worker nodes:

huuve@appserver:~/kubernetes_bash_scripts$ sudo kubeadm join --token 10b232.1ed5c1ca3ae3446e [IP add]:6443
[kubeadm] WARNING: kubeadm is in beta, please do not use it for production clusters.
[preflight] Running pre-flight checks
[discovery] Trying to connect to API Server "101.100.225.34:6443"
[discovery] Created cluster-info discovery client, requesting info from "https://101.100.225.34:6443"
[discovery] Failed to connect to API Server "[IP address]:6443": there is no JWS signed token in the cluster-info ConfigMap. This token id "10b232" is invalid for this cluster, can't connect

Error still persists even when I generate a new token and use that.
