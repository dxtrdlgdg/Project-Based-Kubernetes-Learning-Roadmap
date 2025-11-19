# PHASE 1 – Core Kubernetes Fundamentals (Week 1–2)
## Goal: Understand Pods, Deployments, and Services — the foundation of Kubernetes.
### Create a Cluster for Phase 1
```
k3d clusted create phase1
```
### Create Manifest files 
* deployment.yaml
* service.yaml
* configmap.yaml
* ingress.yaml
#### Add Initial configurations on the file then use kubectl apply
```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl apply -f configmap.yaml
kubectl apply -f ingress.yaml
```
#### Check Resources
```
kubectl get pods
```
```
NAME                      READY   STATUS    RESTARTS   AGE
phase1-7bb657c489-6hb4j   1/1     Running   0          90s
```
```
kubectl get svc
```
```
NAME         TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)          AGE
kubernetes   ClusterIP   10.43.0.1      <none>        443/TCP          8m36s
phase1       NodePort    10.43.70.106   <none>        8080:32552/TCP   3m3s
```
```
kubectl get ingress
```
```
NAME             CLASS     HOSTS          ADDRESS      PORTS   AGE
phase1-ingress   traefik   phase1.local   172.18.0.2   80      3m38s
```