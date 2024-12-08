module "renovate_reproduction_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.1"
  name                   = "renovate-reproduction"
  description            = "Minimal reproduction for Renovate issues"
  is_public              = true
  enable_argocd_rules    = false
  required_status_checks = []
}

import {
  id = "renovate-reproduction"
  to = module.renovate_reproduction_repo.github_repository.main
}
