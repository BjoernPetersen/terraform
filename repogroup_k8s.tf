module "k8s_repos" {
  for_each = {
    "k8s-argocd" : {
      description = "ArgoCD for home k8s cluster"
    }
    "k8s-argocd-applicationsets" : {
      description            = "ArgoCD Applications for home k8s cluster"
      required_status_checks = []
    }
    "k8s-gateway" : {
      description            = "Gateway ingresses on home k8s cluster"
      required_status_checks = []
    }
    "k8s-namespaces" : {
      description = "Namespaces and permissions as code for home k8s cluster"
    }
    "k8s-postgres" : {
      description            = "Postgres database chart for home k8s setup"
      required_status_checks = []
    }
  }
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.1"
  name        = each.key
  description = each.value.description
  required_status_checks = lookup(
    each.value,
    "required_status_checks",
    [
      "lint",
    ],
  )
  is_public      = false
  enable_actions = lookup(each.value, "enable_actions", true)
}
