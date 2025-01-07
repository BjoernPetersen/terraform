module "oauth_ingress_helm_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.0.2"
  name   = "oauth-ingress-helm"

  is_public           = false
  enable_argocd_rules = false

  required_status_checks = []
}

import {
  id = "oauth-ingress-helm"
  to = module.oauth_ingress_helm_repo.github_repository.main
}
