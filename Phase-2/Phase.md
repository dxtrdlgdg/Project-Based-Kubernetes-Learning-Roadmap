## ⚙️ PHASE 2 – Multi-Service Application (Week 3–4)
**🎯 Goal:** Learn multi-container setups, internal communication, and health probes.

### 🧱 Project: Guestbook App (Frontend + API + Redis)
- [ ] Deploy frontend (React/NGINX)  
- [ ] Deploy backend API (Flask/Node.js)  
- [ ] Deploy Redis  
- [ ] Use ConfigMaps, Secrets, liveness & readiness probes  

### 🧰 Tools
- Docker, kubectl, Minikube  
- Sample: [GCP Guestbook App](https://github.com/GoogleCloudPlatform/kubernetes-engine-samples/tree/main/guestbook)

### 📘 Resources
- [ConfigMap Docs](https://kubernetes.io/docs/concepts/configuration/configmap/)
- [Secret Docs](https://kubernetes.io/docs/concepts/configuration/secret/)

### ✅ Criteria
- [ ] Services communicate internally (backend ↔ Redis)  
- [ ] Configurable environment variables  
- [ ] Health probes working  
