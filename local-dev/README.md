# local development
## Windows Client
- https://minikube.sigs.k8s.io/docs/start/

- Powershell (Admin): `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All`
- Download: https://storage.googleapis.com/minikube/releases/latest/minikube-installer.exe
- start minikube: [start-script](start_minikube.sh)
- Install Tekton: `kubectl apply --filename https://github.com/tektoncd/pipeline/releases/download/v0.31.0/release.notags.yaml` 
  - docu: https://redhat-scholars.github.io/tekton-tutorial/tekton-tutorial/setup.html
- Install ArgoCD: 
    ```
    kubectl create namespace argocd
    kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
    ```
  - docu: https://argo-cd.readthedocs.io/en/stable/getting_started/