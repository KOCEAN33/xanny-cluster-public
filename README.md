# xanny-cluster

## Basic Structure
- Cluster : Vultr Kubernetes Engine (VKE)
- Container Registry : Vultr Container Registry
- CI : Jenkins
- CD : ArgoCD
- Infrastructure Provisioning : Terraform


## Directory
| 경로            | 용도             | 설명                                                     |
|---------------|----------------|--------------------------------------------------------------|
| `/apps`       | GitOps Repo    | kubernetes yaml files  |
| `/deployment` | Argo Manifests | ArgoCD deployment manifests       |
| `/kubernetes` | App Manifests  | Helm Manifests on kubernetes cluster  |
| `/templates`  | templates      | template for service and Dockerfile, etc.    |
| `/terraform`  | terraform      | infrastructure provisioning terraform codes     |


## Deployed apps
|분류|이름| 경로                                                          |비고|
|-----|-----|-------------------------------------------------------------|-----|
|CI/CD|ArgoCD| [https://argo.xanny.us](https://argo.xanny.us)             |IP 제한 적용|
|Monitoring|Grafana| [https://grafana.xanny.us](https://grafana.xanny.us) |IP 제한 적용|
|Monitoring|Loki & Promtail|                                              |Logging |
|Monitoring|Prometheus|                                                   |monitoring & alerting|
|Ingress|Nginx-Ingress-Controller|                                        ||


## Deployed Services
|이름| 경로                                                     |비고|
|----|--------------------------------------------------------|-----|
|V-Tracer|[https://v-tracer.com](https://v-tracer.com)        |Tracking VTuber's playing game|