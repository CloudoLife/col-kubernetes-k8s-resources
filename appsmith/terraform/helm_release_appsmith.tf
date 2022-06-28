
# helm_release | Resources | hashicorp/helm | Terraform Registry
# https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release
resource "helm_release" "appsmith" {
  create_namespace = true

  name       = "appsmith"
  namespace   = "appsmith"
  repository = "https://helm.appsmith.com"
  chart      = "appsmith"
  version    = "1.5.3"

  values = [
    "${file("./kubernetes-resources/appsmith/values/values.yaml")}"
  ]

  timeout = 600
  cleanup_on_fail = true
  atomic = true
  
}
