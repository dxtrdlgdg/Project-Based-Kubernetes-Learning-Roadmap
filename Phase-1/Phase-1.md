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
k3d cluster create phase1
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
### Expose and access apps externally
```
kubectl port-forward pod/phase1-7bb657c489-6hb4j 8080:80
```
```
curl -vk localhost:8080
* Host localhost:8080 was resolved.
* IPv6: ::1
* IPv4: 127.0.0.1
*   Trying [::1]:8080...
* Connected to localhost (::1) port 8080
> GET / HTTP/1.1
> Host: localhost:8080
> User-Agent: curl/8.5.0
> Accept: */*
> 
< HTTP/1.1 200 OK
< Server: nginx/1.29.3
< Date: Wed, 19 Nov 2025 07:10:08 GMT
< Content-Type: text/html
< Content-Length: 615
< Last-Modified: Tue, 28 Oct 2025 12:05:10 GMT
< Connection: keep-alive
< ETag: "6900b176-267"
< Accept-Ranges: bytes
< 
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
* Connection #0 to host localhost left intact
```
### Create custom index.html template ```index.html.template```
```
<!DOCTYPE html>
<html>
<head>
    <title>My App</title>
</head>
<body>
    <h1>{{APP_MESSAGE}}</h1>
</body>
</html>
```
### Create an entrypoint script ```entrypoint.sh```
```
#!/bin/sh
# Replace placeholders in template with env variables
envsubst < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html
# Start Nginx in foreground
nginx -g 'daemon off;'
```
#### Make it executable
```chmod +x entrypoint.sh```
#### Create a Dockerfile
```
FROM nginx:latest

# Copy template and script
COPY index.html.template /usr/share/nginx/html/index.html.template
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]

```
#### Build the image ``` docker build -t phase1-configmap .```
#### Import the image to k3d nodes ```k3d image import phase1-configmap:latest -c phase1```
#### Update the deployment file using this image ```phase1-configmap:latest```
```
curl -vk http://localhost:8080/
* Host localhost:8080 was resolved.
* IPv6: ::1
* IPv4: 127.0.0.1
*   Trying [::1]:8080...
* Connected to localhost (::1) port 8080
> GET / HTTP/1.1
> Host: localhost:8080
> User-Agent: curl/8.5.0
> Accept: */*
> 
< HTTP/1.1 200 OK
< Server: nginx/1.29.3
< Date: Wed, 19 Nov 2025 07:48:48 GMT
< Content-Type: text/html
< Content-Length: 124
< Last-Modified: Wed, 19 Nov 2025 07:43:25 GMT
< Connection: keep-alive
< ETag: "691d751d-7c"
< Accept-Ranges: bytes
< 
<!DOCTYPE html>
<html>
<head>
    <title>Phase 1</title>
</head>
<body>
    <h1>Hello! this is Phase 1</h1>
</body>
</html>
* Connection #0 to host localhost left intact
```
### DONE Phase 1 