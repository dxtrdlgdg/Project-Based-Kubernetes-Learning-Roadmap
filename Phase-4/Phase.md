## 🌐 PHASE 4 – Ingress & Networking (Week 6–7)
**🎯 Goal:** Control external access with ingress, routing, and TLS.

### 🧱 Project: Multi-Service Routing
- [ ] Install NGINX Ingress Controller (Helm)  
- [ ] Deploy frontend & backend  
- [ ] Create Ingress: `/` → frontend, `/api` → backend  
- [ ] Add HTTPS with cert-manager  

### 🧰 Tools
- Helm  
- Minikube / k3d  
- cert-manager  

### 📘 Resources
- [NGINX Ingress Controller](https://kubernetes.github.io/ingress-nginx/)
- [cert-manager Docs](https://cert-manager.io/docs/)

### ✅ Criteria
- [ ] Accessible via local domain  
- [ ] TLS certificate active  
- [ ] Understand Ingress vs Service exposure  