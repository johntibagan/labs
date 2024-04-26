# all
kubectl apply -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/objects/FILE
# kubectl delete -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/objects/FILE

kubectl get OBJECT
kubectl describe OBJECT

# ---------- namespaces
kubectl get namespaces
kubectl get namespace john-dev #-o yaml
kubectl describe namespace john-dev

# ---------- pods
kubectl get pods
kubectl describe pod parksmap-pod

# ---------- deployments
kubectl get deployments
kubectl describe deployment parksmap-deployment
kubectl delete pod parksmap-deployment-<id-pod>

# ---- logs
# un pod
kubectl logs parksmap-pod #-f
# por un selector -l
kubectl logs -l app=parksmap-deployment #-f

# ---------- service
kubectl get service

# ---------- ingress
kubectl get ingress
kubectl get routes #solo en openshift

# ---------- hpa - HorizontalPodAutoscaler
kubectl get hpa

# ---------- ConfigMap
kubectl get configmap
env | sort
ls -la /home/appuser/config
cat /home/appuser/config/file-1.json
cat /home/appuser/config/file-2.xml

# ---------- PersistentVolumeClaim
kubectl get pvc
echo "Contenido de un archivo temporal" > /tmp/data/file-temp.txt
echo "Archivos permanentes en un PVC" > /mnt/data/file-pvc.txt
cat /tmp/data/file-temp.txt
cat /mnt/data/file-pvc.txt
ls -la  /tmp/data/
ls -la  /mnt/data/


# --- ALL apply - remove
kubectl apply -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/all.yaml
# kubectl delete -f https://raw.githubusercontent.com/johntibagan/labs/main/1-kubernetes/all.yaml