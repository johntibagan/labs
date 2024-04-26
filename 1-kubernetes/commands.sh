# ---------- namespaces
kubectl get namespaces

kubectl apply -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/objects/1-namespace.yaml
kubectl get namespace john-dev #-o yaml
kubectl describe namespace john-dev

kubectl delete -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/objects/1-namespace.yaml

# ---------- pods
kubectl get pods

kubectl apply -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/objects/2-pod.yaml
kubectl describe pod parksmap-pod

kubectl delete -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/objects/2-pod.yaml

# ---------- deployments

kubectl get deployments

kubectl apply -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/objects/3-deployment.yaml
kubectl describe deployment parksmap-deployment

kubectl delete pod parksmap-deployment-<id-pod>

kubectl delete -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/objects/3-deployment.yaml

# ---- logs
# un pod
kubectl logs parksmap-pod #-f
# por un selector -l
kubectl logs -l app=parksmap-deployment #-f


# --- ALL apply - remove
