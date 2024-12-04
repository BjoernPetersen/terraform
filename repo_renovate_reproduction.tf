module "renovate_reproduction_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.4.0"
  name                   = "renovate-reproduction"
  description            = "Minimal reproduction for https://github.com/renovatebot/renovate/discussions/31572"
  is_public              = true
  enable_argocd_rules    = false
  required_status_checks = []
}

import {
  id = "renovate-reproduction"
  to = module.renovate_reproduction_repo.github_repository.main
}
