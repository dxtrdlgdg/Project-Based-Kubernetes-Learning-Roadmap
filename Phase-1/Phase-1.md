## 🧩 PHASE 1 – Core Kubernetes Fundamentals (Week 1–2)
**🎯 Goal:** Understand Pods, Deployments, and Services — the foundation of Kubernetes.

### 🧱 Project: Static NGINX Web App
- [ ] Create a Deployment for NGINX with 2 replicas  
- [ ] Expose it using a NodePort Service  
- [ ] Mount a ConfigMap for custom `index.html`  
- [ ] Inspect Pods with `kubectl get/describe/logs/exec`  

### 🧰 Tools
- Minikube or k3d  
- kubectl  
- Lens (optional GUI)

### 📘 Resources
- [Kubernetes Concepts](https://kubernetes.io/docs/concepts/)
- [Katacoda Labs](https://www.katacoda.com/courses/kubernetes)
- [TechWorld with Nana – K8s Basics](https://www.youtube.com/watch?v=X48VuDVv0do)

### ✅ Criteria
- [ ] Deploy, scale, and delete apps via kubectl  
- [ ] Expose and access apps externally  
- [ ] Understand Pod, ReplicaSet, Deployment, Service differences

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