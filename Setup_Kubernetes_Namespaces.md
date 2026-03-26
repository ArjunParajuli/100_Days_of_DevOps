Q. The Nautilus DevOps team is planning to deploy some micro services on Kubernetes platform. \The team has already set up a Kubernetes cluster and now they want to set up some namespaces, deployments etc. \Based on the current requirements, the team has shared some details as below:
Create a namespace named dev and deploy a POD within it. Name the pod dev-nginx-pod and use the nginx image with the latest tag. Ensure to specify the tag as nginx:latest.
Note: The kubectl utility on the jump-host has been configured to work with the Kubernetes cluster.

1. Create the Namespace dev \
kubectl create namespace dev

2. Create dev-nginx-pod.yml: \
apiVersion: v1 \
kind: Pod \
metadata:\
  name: dev-nginx-pod\
  namespace: dev\
spec:\
  containers:\
  - name: nginx\
    image: nginx:latest\
    ports:\
    - containerPort: 80\

3. kubectl apply -f dev-nginx-pod.yml\
4. Check: kubectl get pods --all-namespaces
