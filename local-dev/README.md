# local development
## Windows Client
- https://minikube.sigs.k8s.io/docs/start/

- Powershell (Admin): `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All`
- Download: https://storage.googleapis.com/minikube/releases/latest/minikube-installer.exe
- start minikube: [start-script](minikube_start.sh)

### Minikube Addons
- `minikube addons enable ingress`
- `minikube addons enable ingress-dns`
- `minikube addons enable dashboard`
- `minikube addons enable registry`
- `minikube addons enable registry-aliases`
- `minikube addons enable logviewer`
- `minikube addons enable metrics-server`

## Tools in minikube
### Tekton
- Install Tekton Pipeline: `kubectl apply --filename https://github.com/tektoncd/pipeline/releases/download/v0.32.0/release.notags.yaml` 
  - docu: 
    - https://tekton.dev/docs/pipelines/install/
    - https://redhat-scholars.github.io/tekton-tutorial/tekton-tutorial/setup.html
- Install Tekton Triggers: 
  ```
  kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
  kubectl apply --filename https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml
  ```
  - docu: 
    - https://tekton.dev/docs/triggers/
    - https://github.com/tektoncd/triggers/blob/main/docs/install.md
- Install Tekton Dashboard: `kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/tekton-dashboard-release.yaml`
  - docu: https://github.com/tektoncd/dashboard/
  - call kubectl proxy:
    - `kubectl proxy`
    - `http://localhost:8001/api/v1/namespaces/tekton-pipelines/services/tekton-dashboard:http/proxy/` 
  - call with port-forward: 
    - `kubectl --namespace tekton-pipelines port-forward svc/tekton-dashboard 9097:9097`
    - `http://localhost:9097`
### ArgoCD
- Install ArgoCD: 
    ```
    kubectl create namespace argocd
    kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
    ```
  - docu: https://argo-cd.readthedocs.io/en/stable/getting_started/
### Helm
- Chartmuseum
  - `kubectl create namespace chartmuseum`
  - 