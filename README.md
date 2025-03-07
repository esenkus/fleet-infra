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
  kubectl port-forward service/podinfo 9898:9898 -n podinfo
  ```

  The app will be accessible via http://localhost:9898/

### OCI Repositories

- [Capacitor](https://github.com/gimlet-io/capacitor) is a general purpose UI for FluxCD.
  You will need to port-forward to the service to access it. use this to expose the service to the internet.

  ```
  kubectl -n flux-system port-forward svc/capacitor 9000:9000
  ```
  The app will be accessible via http://localhost:9000/