** Master Components **

1. kube-apiserver
Exposes the Kubernetes API. It is the front-end for the Kubernetes control plane.
It is designed to scale horizontally (by deploying more instances)

2. etcd
Kubernetes backing store - cluster data stored here.
Have a backup plan for etcd.

3. kube-controller-manager
Runs controllers - the background threads that handle routine tasks in the cluster.
Logically, each controller is a separate process, but to reduce complexity, they are all compiled
into a single binary and run in a single process.

These controllers include:
- Node Controller: Responsible for noticing and responding when nodes go down
- Replication controller: Responsible for maintaining the correct number of pods for every replication controller object in the system.
- Endpoints controller: populates the Endpoints object (that is, joins services & Pods)
- Service Account & Token controllers: Create default accounts and API access tokens for new namespaces.

4. cloud-controller-manager
Runs controllers that interact with the underlying cloud providers. Runs cloud-provider-specific controller loops only. Must disable these controller loops in the kube-controller-manager
Can disable the loops by setting the --cloud-provider flag to external when starting the kube-controller-manager.

This allows cloud vendors code and Kubernetes core to evolve independent of each other.

Following controllers have cloud provider dependencies:
- Node controller: For checking the cloud provider to determine if anode has been deleted in the cloud after it stops responding.
- Route controller: For setting up routes in the underlying cloud infrastructure
- Service Controller: For creating, updating and deleting cloud provider load balancers.
- Volume controller: For creating, attaching and mounting volumes, and interacting with the cloud provider to orchestrate volumes.

5. kube-scheduler
Watches newly created pods that have no node assigned, and selects a node for them to run on.

6. addons
Pods & Services that implement cluster features.
The pods may be managed by Deployments, ReplicationControllers, and so on.
Namespaced addon objects are created in the kube-system namespace.

Addon manager creates & maintains addon resources.

- DNS:
All Kubernetes clusters should have cluster DNS. It's a DNS server, in addition to the other DNS servers in your environment, which serves DNS records for Kubernetes Services.
Containers started by Kubernetes automatically include this DNS server in their DNS searches

- User interface
The kube-ui provides a read-only overview of the cluster state.

- Container Resource Monitoring
Records time-series metrics about containers in a central database
Provides UI for browsing that database

- Cluster-level logging
Saves container logs to a central log store with search/browsing interface
