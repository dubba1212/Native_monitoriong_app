Cloud Native Resource Monitoring Python App on K8s!

🤯 What You'll Learn
Develop a monitoring application using Python, Flask, and psutil.
Run a Python app locally.
Dockerize a Python application.
Push Docker images to AWS ECR.
Deploy on Kubernetes (EKS) using Python.


Prerequisites
AWS Account.
AWS CLI configured with programmatic access.
Python.
Docker and Kubectl installed.
Code editor (e.g., Vscode).

✨ Project Steps
1. Deploy Flask App Locally
Clone the repository and install dependencies

git clone <repository_url>
pip install -r requirements.txt

Run the application - python app.py
Visit to access the application http://localhost:5000/

2. Dockerize the Flask App
Create a Dockerfile.

docker build -t <image_name> .
docker run -p 5000:5000 <image_name>
Visit http://localhost:5000/

3. Push Docker Image to AWS ECR
Use the provided Python script to create an ECR repository.
bash
Copy code
docker push <ecr_repo_uri>:<tag>

4. Deploy on EKS using Python
Create an EKS cluster and node group.
Use the provided Python script (eks.py) to deploy the app. Ensure you update the image URI.
Verify with:
bash
Copy code
kubectl get deployment -n default
kubectl get service -n default
kubectl get pods -n default

Expose the service:
bash
Copy code
kubectl port-forward service/<service_name> 5000:5000