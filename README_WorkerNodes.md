After setting up the master, + setting up WeaveNet on that, this will be how to set up worker nodes and let them join the network.

After setting up the master, you should get the join key, which looks something like that:

kubeadm join --token [some hash] [ip address]:[port]

Please keep this somewhere safe and convenient to access, as you'll need it for the worker nodes to join in the network.

If forget token, generate a new one with the command: kubeadm token generate  
