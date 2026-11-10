EXPERIMENT 8 - KUBERNETES DEPLOYMENT AND SERVICE

These YAML files follow the lab manual (Experiment 8, pages 26-29).

Prerequisites:
- Docker installed and running
- Minikube installed
- kubectl installed

Run from this folder:

1. Start Minikube:
minikube start

2. Check cluster:
minikube status
kubectl get nodes

3. Apply Deployment and Service:
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

4. Verify:
kubectl get deployments
kubectl get pods
kubectl get services

5. Open application:
minikube service mywebapp-service

6. Scale to 3 replicas:
kubectl scale deployment mywebapp --replicas=3
kubectl get pods

7. View logs:
kubectl logs deployment/mywebapp

8. Inspect the application file:
kubectl get pods
kubectl exec -it POD_NAME -- cat /usr/share/nginx/html/index.html
Replace POD_NAME with an actual pod name from kubectl get pods.

9. Clean up:
kubectl delete -f service.yaml
kubectl delete -f deployment.yaml
minikube stop

The Service selector app: mywebapp matches the labels in deployment.yaml.
