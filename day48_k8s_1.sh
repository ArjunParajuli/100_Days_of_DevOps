# Create a pod named pod-httpd using the httpd image with the latest tag. Ensure to specify the tag as httpd:latest.
# Set the app label to httpd_app, and name the container as httpd-container.

# Create pod file: pod-httpd.yaml
vi pod-httpd.yaml

# Paste the following content:
apiVersion: v1
kind: Pod
metadata:
  name: pod-httpd
  labels:
    app: httpd_app
spec:
  containers:
  - name: httpd-container
    image: httpd:latest

# Save and exit (:wq in vi)
# Apply it:
kubectl apply -f pod-httpd.yaml
