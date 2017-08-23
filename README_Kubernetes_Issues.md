Issue 1:

Node forever in NotReady State

NetworkReady=false reason:NetworkPluginNotReady message:docker: network plugin is not ready: cni config uninitialized

Solution:https://github.com/kubernetes/kubernetes/issues/43815

$ kubeadm reset
remove ENV entires from /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
$ systemctl daemon-reload
$ systemctl restart kubelet.service

$ sudo kubeadm init

Issue 2: How to reset Kuberneates

$ rm admin.conf (go look for it)
==> Otherwise, may come into certificate authority issues. Alternatively, can try resetting without doing this first, then do this step and reset it again if you run into the same issues

then do as above in issue 1, with kubeadm reset , and so on.
