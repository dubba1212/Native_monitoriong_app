
# Cloud Native Resource Monitoring Python APP on K8s!

It contains a Python-based Monitoring Application created using Flask and psutil. To run the application locally, ensure you have Python installed and use Flask for local development. Learn about the Docker ecosystem to containerize the Python application. A Dockerfile is provided for containerization. Build the Docker image, and use Docker commands for local testing. The application can be pushed to an Amazon Elastic Container Registry (ECR) using Boto3. For scaling and orchestration, this repository explores Kubernetes. It guides you through creating an Amazon Elastic Kubernetes Service (EKS) cluster and Nodegroups, followed by deploying and managing Kubernetes Deployments and Services programmatically with Python. With this README, you can easily get started with building, packaging, and orchestrating your Python monitoring application.


### Prerequisites
AWS Account.

AWS CLI configured with programmatic access.

Python.

Docker and Kubectl installed.

Code editor (e.g., Vscode).

# Project Steps


## 1. Deploy App Locally

Clone the repository and install dependencies

```bash
  git clone <repository_url> 
  pip install -r requirements.txt
```

Run the application
```bash
  python app.py  
```


Visit to access the application http://localhost:5000/

## 2. Dockerize the Flask App

Create a Dockerfile in the root directory.

```bash
  docker build -t <image_name>
  docker run -p 5000:5000 <image_name>
```
Visit http://localhost:5000/

## 3. Push Docker Image to AWS ECR
Use the provided Python script to create an ECR repository.

Push the docker Image to the ECR using the push command.
```bash
  docker push <ecr_repo_uri>:<tag>  
```

## 4. Create a EKS cluster and deploy it using the python
- Create a EKS and nodegroup
- Use the Provided Python script eks.py to deploy the app.
- Ensure you update the image URI on line 27.
Once you run the file deployment and serive will be created.
Verify with:
```bash
  kubectl get deployment -n default (check deployments)
  kubectl get service -n default (check service)
  kubectl get pods -n default (to check the pods)
```
Once the pod is running. Expose the service.
```bash
  kubectl port-forward service/<service_name> 5000:5000  
```


