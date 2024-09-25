module "argo_examples_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                   = "example-app"
  is_public              = false
  enable_argocd_rules    = false
  required_status_checks = []
}

import {
  id = "example-app"
  to = module.argo_examples_repo.github_repository.main
}
