# kubernetes
Basics about K8s architecture presented in simplest possible way :)

🌟 Today, I delved into the fascinating world of Kubernetes architecture! 🚀
🌟 Excited to share insights on Kubernetes! 🌟
So let's start vd something fun, why is Kubernetes abbreviated as K8s?
Kubernetes, the powerful container orchestration tool, is often referred to as K8s. The abbreviation "K8s" stems from replacing the eight letters between "K" and "s" in "Kubernetes." This shorthand is widely used in tech circles and underscores its significance in modern cloud-native applications :) .

**Exploring Kubernetes Architecture**
In today's interconnected digital landscape, understanding Kubernetes' architecture is crucial for anyone involved in software development and cloud operations. Here's a brief breakdown:
![image](https://github.com/user-attachments/assets/f40ddc0a-f831-43f9-8bee-10c8e1e042d4)

Key Advantages Over Docker:
Cluster Nature: Kubernetes operates seamlessly as a cluster, ensuring high availability and fault tolerance by default.

Auto Healing: With automated healing capabilities, Kubernetes detects and replaces failed containers or nodes, reducing manual intervention.

Auto Scaling: Kubernetes dynamically scales applications based on resource utilization metrics, optimizing performance under varying workloads.

Enterprise Support: Offering extensive enterprise-level features such as advanced load balancing and robust security measures, Kubernetes is tailored for complex deployments.

Inside Kubernetes Pods:
Unlike Docker's focus on containers, Kubernetes introduces the concept of Pods as the basic unit of deployment. A Pod can host one or more containers, sharing resources like storage and networking within a node. When a user wants to deploy a pod, the request goes through the master i.e., control plane to the worker node

Components Overview of worker node:
Kubelet: Ensures Pods are running and healthy on worker nodes. If smt is wrong vd pod, kublet  tells 1 of the components of kubernetese control plane that the pod is not running properly.

Container Runtime: Executes containers within Pods; Kubernetes supports various runtimes like Docker, containerd, and CRI-O.

kube-proxy: As in docker we have docker 0/brige network for running container. In k8s we have kube-proxy that facilitates network connectivity (providing IP address) for Pods, managing networking rules and load balancing across cluster nodes.

By now we can say that the Worker Node (data plane) is actually Powering our Applications from running your applications, deployed, managed, and executed, ensuring your workloads.
Then why the Control Plane?
While the worker node handles the heavy lifting of application execution, the control plane plays a crucial role in orchestrating and managing these resources across your Kubernetes environment.
The control plane in Kubernetes consists of several essential components that manage and control the cluster's state and configuration. Here are the key reasons why the control plane is necessary:
API Server: This is the primary management point for the Kubernetes cluster. It exposes the Kubernetes API, which users and other components interact with to manage the cluster's resources.Acts as the front-end for the Kubernetes control plane. All administrative tasks, including managing pods, services, and deployments, are performed via API requests.

Scheduler: Responsible for determining where to place newly created pods based on resource availability and requirements specified in pod definitions. After receiving a pod creation request from the API server, the scheduler decides which node (worker node) will run the pod based on factors like resource availability and constraints.

etcd: A distributed key-value store that stores the cluster's state, configuration, and metadata. It ensures that the cluster maintains its desired state even after reboots or failures. This includes data about nodes (machines), pods (applications), services, configurations, and other Kubernetes objects.

Controller Manager: Just like a manager in charge of a team, the Controller Manager oversees various aspects of the Kubernetes cluster to ensure everything runs smoothly. Manages various controllers that regulate the state of the cluster, such as the ReplicaSet controller for ensuring the specified number of pod replicas (instances of applications) are running at all times. If a pod fails or needs to scale up, it's the Controller Manager's job to make sure the correct number of pods are running.

Cloud Controller Manager: It is a Bridge Between Kubernetes and Cloud Providers. Imagine you have a really smart translator who knows both your language and another language perfectly. The Cloud Controller Manager is like that translator but for Kubernetes and cloud platforms (like AWS, GCP, Azure, etc.).

It understands how Kubernetes wants things done and how to talk to the cloud provider's systems in their own language. Also, if you want to create a load balancer for your applications running on Kubernetes, the Cloud Controller Manager will talk to the cloud provider's API to create and manage that load balancer.



























