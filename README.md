# 🚀 Project-Based Kubernetes Learning Roadmap

[![Kubernetes](https://img.shields.io/badge/Kubernetes-Learning-blue?logo=kubernetes)](https://kubernetes.io/)
[![Helm](https://img.shields.io/badge/Helm-Templating-0f1689?logo=helm)](https://helm.sh/)
[![GitHub Actions](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-2088FF?logo=githubactions)](https://docs.github.com/en/actions)
[![License](https://img.shields.io/badge/License-MIT-green)]()

> A **project-based learning roadmap** for mastering Kubernetes from zero to production —  
> built entirely through real-world, hands-on projects.

---

## 📋 Table of Contents
- [Phase 1 – Core Fundamentals](#-phase-1--core-kubernetes-fundamentals-week-12)
- [Phase 2 – Multi-Service App](#-phase-2--multi-service-application-week-34)
- [Phase 3 – Storage & Persistence](#-phase-3--storage-and-persistence-week-5)
- [Phase 4 – Ingress & Networking](#-phase-4--ingress--networking-week-67)
- [Phase 5 – CI/CD & GitOps](#-phase-5--cicd--gitops-week-89)
- [Phase 6 – Monitoring & Logging](#-phase-6--monitoring--logging-week-1011)
- [Phase 7 – Scaling & Reliability](#-phase-7--advanced-deployments--scaling-week-12)
- [Phase 8 – Cloud & Multi-Env](#-phase-8--cloud-deployment--multi-environment-week-1314)
- [Final Capstone Project](#-final-capstone-project-week-1516)
- [Learning Flow](#-suggested-learning-flow)
- [Recommended Setup](#-recommended-setup)

---

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

---

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

---

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

---

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

---

## ⚙️ PHASE 5 – CI/CD & GitOps (Week 8–9)
**🎯 Goal:** Automate deployment and delivery.

### 🧱 Project: Helm + GitHub Actions Pipeline
- [ ] Package app using Helm  
- [ ] Deploy via `helm install`  
- [ ] Setup GitHub Actions:
  - Build Docker image  
  - Push to registry  
  - Deploy via `kubectl` or `helm upgrade`  
- [ ] (Optional) Setup ArgoCD  

### 🧰 Tools
- Helm  
- GitHub Actions  
- ArgoCD  

### 📘 Resources
- [Helm Docs](https://helm.sh/docs/)
- [ArgoCD Guide](https://argo-cd.readthedocs.io/en/stable/getting_started/)

### ✅ Criteria
- [ ] Auto deployment on code push  
- [ ] Multi-env Helm values  
- [ ] Understand GitOps  

---

## 📊 PHASE 6 – Monitoring & Logging (Week 10–11)
**🎯 Goal:** Observe performance and collect logs.

### 🧱 Project: Project Overwatch
- [ ] Deploy Prometheus + Grafana  
- [ ] Add app dashboards  
- [ ] Deploy Loki for log aggregation  
- [ ] Create alert rules  

### 🧰 Tools
- Prometheus Operator (Helm)  
- Grafana  
- Loki  

### 📘 Resources
- [Kube-Prometheus Stack](https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack)
- [Grafana Loki Docs](https://grafana.com/docs/loki/latest/)

### ✅ Criteria
- [ ] Dashboards live  
- [ ] Logs searchable  
- [ ] Alerts trigger  

---

## ⚖️ PHASE 7 – Advanced Deployments & Scaling (Week 12)
**🎯 Goal:** Build resilient and scalable systems.

### 🧱 Project: Scalable API System
- [ ] Implement Horizontal Pod Autoscaler (HPA)  
- [ ] Perform rolling updates  
- [ ] Set CPU/memory limits  
- [ ] Apply PodDisruptionBudget  

### 🧰 Tools
- kubectl  
- Load testing (`hey`, `k6`)  

### 📘 Resources
- [HPA Docs](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/)
- [Rolling Updates](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#rolling-updates)

### ✅ Criteria
- [ ] Auto-scaling verified  
- [ ] Zero downtime deploys  
- [ ] Resource quotas active  

---

## ☁️ PHASE 8 – Cloud Deployment & Multi-Environment (Week 13–14)
**🎯 Goal:** Run workloads in managed cloud K8s.

### 🧱 Project: Multi-Env Cloud Deployment
- [ ] Namespaces: dev, qa, prod  
- [ ] Separate Helm values per env  
- [ ] Deploy to EKS / GKE / AKS  
- [ ] Manage secrets via Secrets Manager or SOPS  

### 🧰 Tools
- AWS CLI / gcloud / az  
- Helm  
- SOPS  

### 📘 Resources
- [EKS Workshop](https://www.eksworkshop.com/)
- [External Secrets Operator](https://external-secrets.io/)
- [Helm Values Files](https://helm.sh/docs/chart_template_guide/values_files/)

### ✅ Criteria
- [ ] Isolated namespaces per env  
- [ ] Secure secrets management  
- [ ] Cloud ingress & DNS working  

---

## 🏁 FINAL CAPSTONE PROJECT (Week 15–16)
**🎯 Goal:** Combine all phases into one production-grade system.

### 💡 Project: Cloud-Native Microservice Platform
**Includes:**
- Frontend + API + DB  
- Helm-based multi-env deployment  
- Ingress + HTTPS  
- Prometheus + Grafana + Loki  
- GitHub Actions CI/CD  
- Autoscaling + Persistent storage  

### ✅ Criteria
- [ ] Fully automated deployment pipeline  
- [ ] Observable and scalable cluster  
- [ ] Secure multi-env architecture  
- [ ] Complete documentation + diagram  

---

## 🧭 Suggested Learning Flow

| Phase | Topic | Duration | Output |
|-------|--------|-----------|---------|
| 1 | Core Concepts | 2 weeks | NGINX app |
| 2 | Multi-Service | 2 weeks | Guestbook app |
| 3 | Persistence | 1 week | Stateful app |
| 4 | Ingress & TLS | 2 weeks | HTTPS routing |
| 5 | CI/CD | 2 weeks | Auto deploy pipeline |
| 6 | Monitoring | 2 weeks | Dashboards & logs |
| 7 | Scaling | 1 week | HPA & limits |
| 8 | Cloud Deployment | 2 weeks | EKS/GKE setup |
| Capstone | Final Project | 2 weeks | Production-ready system |

---

## 🧰 Recommended Setup
- OS: Ubuntu 22.04+ or WSL2  
- Tools: Docker, kubectl, Helm, Minikube/k3d, kubectx, Lens  
- Optional Cloud: AWS EKS or GCP GKE  
- CI/CD: GitHub Actions or ArgoCD  

---

> 🧠 **Tip:** Don’t memorize commands — *build, break, fix.*  
> Use `kubectl explain` and dashboards like **Lens** to visualize your cluster.

---

### 🧡 Credits
Curated by the community and adapted for learners who prefer **project-based mastery**.  
Feel free to fork, star ⭐, and share improvements!

VHJhcmVuZ3JxIG9sIFB1bmdUQ0csIGZienIgeXZheGYgem5sIGFiZyBya3ZmZyE=