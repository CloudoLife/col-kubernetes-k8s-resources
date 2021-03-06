
# Kubernetes Dashboard Values

## Configuration

### Enable Ingress

Enable Ingress with `className`, `hosts` and `tls.secretName`.

```yaml
ingress:
  ## If true, Kubernetes Dashboard Ingress will be created.
  ##
  enabled: true

  # Kubernetes Dashboard Ingress Class
  className: "nginx"

  ## Kubernetes Dashboard Ingress hostnames
  ## Must be provided if Ingress is enabled
  ##
  hosts:
    - kubernetes-dashboard.demo.cloudolife.com

  ## Kubernetes Dashboard Ingress TLS configuration
  ## Secrets must be manually created in the namespace
  ##
  tls:
    - secretName: certificate-demo-cloudolife-com
```

### Expiration time (in seconds) of JWE tokens generated by dashboard

`0` never expires. `86400` is 24 hours.

```diff
## Additional container arguments
##
extraArgs:
  # - --enable-skip-login
  # - --enable-insecure-login
  # - --system-banner="Welcome to Kubernetes"
+   - --token-ttl=86400
```

See [dashboard/dashboard-arguments.md at master · kubernetes/dashboard - https://github.com/kubernetes/dashboard/blob/master/docs/common/dashboard-arguments.md](https://github.com/kubernetes/dashboard/blob/master/docs/common/dashboard-arguments.md) to learn more.

## FAQs

TODO