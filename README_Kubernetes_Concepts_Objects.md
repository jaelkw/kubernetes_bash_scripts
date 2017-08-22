Aim:
1. Understand how Kubernetes objects are represented in Kubernetes API
2. Understand how to represent the objects in .yaml format

**Kubernetes Objects**
- Persistent entitites in the Kubernetes system. These represent the state of the cluster.
  - What containerized applications are running, and on which nodes;
  - The resources available to those applications;
  - The policies around how those applications behave, such as restart policies, upgrades & fault-tolerance
- Use Kubernetes API to work with the objects. Accessible via kubectl CLI.
- Configuration determined by 2 fields:
  - Object spec : described user's desired state for the object
  - Object status : actual state of the object, supplied & updated by the kubernetes system
  --> Kubernetes control plane is always actively managing an object's actual state to match the desired state user supplied.

- Can have Labels attached to them.
  - Intended to specify attributes of objects that are meaningful and relevant to users.
  - Can be attached to objects at creation time & subsequently added & modified at any time.
  - Each key must be unique for a given object.
      "labels": {
        "key1" : "value1",
        "key2" : "value2"
        }
  - For more information on working with labels: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  
