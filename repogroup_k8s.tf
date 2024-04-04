module "k8s_repos" {
  for_each = {
    "k8s-certmanager" : {
      description = "Cert-Manager installation for home k8s cluster",
    },
    "k8s-gateway" : {
      description = "Gateway ingresses on home k8s cluster",
    },
    "k8s-github-runner" : {
      description = "Self-hosted GitHub Runner Controller in home k8s cluster",
    },
    "k8s-namespaces" : {
      description = "Namespaces and permissions as code for home k8s cluster",
    },
  }
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.0.0"
  name        = each.key
  description = each.value.description
  required_status_checks = [
    "lint",
  ]
  is_public = false
}
