<h1>GCP-Terraform-K8S-MongoDB-Statefulset</h1>
This project will assess your Google Cloud, Networking, </br>
DB, Development,Terraform, Docker, and Kubernetes skills.</br>
In this project you will deploy a simple Node.js web application </br>
(stateless) that interacts with a highly available MongoDB </br>
(stateful) replicated across 3 zones and consisting </br>
of 1 primary and 2 secondaries.

<h1>Requirements</h1>
1-Google Cloud Platform account with appropriate permissions</br>
2-Terraform installed and configured with Google Cloud credentials</br>
3-Docker installed and configured</br>
4-Kubernetes installed and configured with the necessary access rights</br>
5-Basic understanding of networking concepts, including VPC, subnets, and firewall rules</br>
6-Basic knowledge of MongoDB and Node.js</br>

<h1>Project Overview</h1>
1. Develop and use your own Terraform modules </br>
to build the required infrastructure on GCP:</br>
a. IAM: 2 service accounts - N roles.</br>
b. Network: 1 VPC - 2 subnets - N firewall rules - 1 NAT.</br>
c. Compute: 1 private VM - 1 GKE standard cluster across 3 zones.</br>
d. Storage: Artifact Registry repository to store the images.</br>
2. Deploy the MongoDB replicaset across the 3 zones.</br>
3. Dockerize and Deploy the Node.js web app </br>
that will connect to the 3 DB replicas.</br>
4. Expose the web app using ingress/load balancer.</br>

<h1>Project Notes</h1>
1. Only the management VM (private) will have</br>
 access to internet through the NAT.</br>
2. The GKE cluster (private) will NOT have access to the internet.</br>
3. The VM will be used to manage the cluster and </br>
build/push images to the Artifact Registry.</br>
4. All deployed images must be stored in Artifact Registry.</br>
5. Avoid using default service accounts and basic </br>
roles, and use predefined only if needed.</br>
6. Avoid extra open ports and permissions.</br>

<h1>To run the Project</h1>
1-clone your repository from your local environment.</br>
2-Install dependencies, including Terraform, Docker, and kubectl.</br>
3-Configure your network (VPC, subnets, firewall rules,</br>
 and NAT gateway using Terraform).</br>
4-Create service accounts and set up IAM roles.</br>
5-Deploy mongodb replicaset across 3 zones.</br>
6-Dockerize Nodejs Application and push it to Artifact Registry.</br>
7-Create GKE Cluster across 3 zones.</br>