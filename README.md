# Sample product to show flux-cd apps

This is a sample project that tries to create simple flux-cd configuration for multiple applications.

## Applications

This section lists the applications that are used in this project. And a little description about them.
Applications are grouped by the repository they are in.

### Helm Repositories

- [Podinfo](https://github.com/stefanprodan/podinfo) is a tiny web application made with Go that showcases best practices of running microservices in
  Kubernetes.
  Ingress is used to expose the podinfo service.  
  You will still need to port-forward to the service to access it. use this to expose the service to the internet.

  ```
  kubectl port-forward svc/podinfo 9898:9898 -n podinfo
  ```

  The app will be accessible via http://localhost:9898/

### OCI Repositories

- [Capacitor](https://github.com/gimlet-io/capacitor) is a general purpose UI for FluxCD.
  You will need to port-forward to the service to access it. use this to expose the service to the internet.

  ```
  kubectl port-forward svc/capacitor 9000:9000 -n capacitor
  ```
  The app will be accessible via http://localhost:9000/

## Setup

Fork this [fleet-infra](https://github.com/esenkus/fleet-infra) repository to your own github account.

Install flux and then export github username and token as environment variables.
```
export GITHUB_TOKEN=ghp_yourToken
export GITHUB_USER=yourUsername
```
After that run flux bootstrap to do all the work, don't forget to replace the owner with your github username.
```
flux bootstrap github \                                  
  --owner=${GITHUB_USER} \
  --repository=https://github.com/yourUsername/fleet-infra \
  --branch=main \
  --personal \
  --path=clusters/my-cluster
```

## Uninstall

To fully uninstall all flux configurations and apps run the following commands

```
flux uninstall --namespace=flux-system
kubectl delete all -n podinfo --all
kubectl delete all -n capacitor --all
```