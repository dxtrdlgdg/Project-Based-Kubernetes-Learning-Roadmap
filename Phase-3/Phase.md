## 💾 PHASE 3 – Storage and Persistence (Week 5)
**🎯 Goal:** Persist data using PV, PVC, and StatefulSets.

### 🧱 Project: WordPress + MySQL Stack
- [ ] Create PV/PVC for MySQL  
- [ ] Deploy MySQL StatefulSet  
- [ ] Deploy WordPress linked to MySQL  
- [ ] Expose via NodePort or Ingress  

### 🧰 Tools
- Minikube / k3s  
- Helm  
- kubectl  

### 📘 Resources
- [WordPress Helm Chart](https://artifacthub.io/packages/helm/bitnami/wordpress)
- [Storage Concepts](https://kubernetes.io/docs/concepts/storage/)

### ✅ Criteria
- [ ] Data persists after pod restart  
- [ ] StatefulSet and PVC bound  
- [ ] Understand stateless vs stateful design  
