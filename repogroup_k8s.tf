module "k8s_repos" {
  for_each = {
    "k8s-argocd" : {
      description = "ArgoCD for home k8s cluster"
    }
    "k8s-argocd-applicationsets" : {
      description = "ArgoCD ApplicationSets"
      enable_actions : false
    }
    "k8s-certmanager" : {
      description = "Cert-Manager installation for home k8s cluster"
    }
    "k8s-gateway" : {
      description = "Gateway ingresses on home k8s cluster"
    }
    "k8s-namespaces" : {
      description = "Namespaces and permissions as code for home k8s cluster"
    }
    "k8s-postgres" : {
      description = "Postgres Operator setup for home k8s server"
    }
  }
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name        = each.key
  description = each.value.description
  required_status_checks = [
    "lint",
  ]
  is_public      = false
  enable_actions = lookup(each.value, "enable_actions", true)
}
