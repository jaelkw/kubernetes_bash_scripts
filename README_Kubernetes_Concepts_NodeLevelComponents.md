** Node Components **
Runs on every node, maintaining running pods and providing the Kubernetes runtime environment

1. kubelet
Primary node agent.
Watches for pods that have been assigned to its node and does to the pods:
- Mounts the pod's required volumes
- Downloads the pod's secrets
- Runs the pod's containers via docker
- Periodically executes any requested container liveness probes
- Reports the status of the pod back to the rest of the system, by creating a mirror pod if necessary
- Reports the status of the node back to the rest of the system

2. kube-proxy
Enables the Kubernetes service abstraction by maintaining network rules on the host
and performing connection forwarding

3. docker
Used for running containers.

Alternatively: rkt. Supported experimentally for running containers as an alternative to docker

4. supervisord
Lightweight process monitor and control system that can be used to keep kubelet and docker running.

5. fluentd
Daemon which helps provide cluster-level logging

** What are nodes? **
- Not inherently created by Kubernetes, but created externally --> Kubernetes is just creating an object that represents the node.
- Worker machine (either VM / physical machine)
- Each node has the services necessary to run pods, including:
  - docker
  - kubelet
  - kube-proxy
- Each node is managed by the master Components
- Node status contains following info:
  - Addresses:
    - Hostname
    - ExternalIP
    - InternalIP
  - conditions: describes status of all Running nodes
  - capacity: describes resources available - CPU, memory, max no. pods that can be scheduled onto the node
  - info: general info, including kernel version, kubernetes version, docker version, OS name.

** Components that interact with Kubernetes node interface **

1. Node controller
- Kubernetes master component which manages various aspects of nodes
- Multiple roles in a node's life:
  a. Assignning CIDR block to the node when it is registered, if CIDR assignment is turned on
  b. keeping node controller's internal list of nodes up to date with the cloud provider's list of available machines.
      In cloud env, whenever node unhealthy --> ask cloud provider if the VM for that node is still available. If not, node controller deletes the node from its list of nodes.
  c. Monitoring nodes' health. Checks state of each node every '--node-monitor-period' seconds
  
