module "nightscout_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.2"
  name        = "nightscout-helm"
  description = "Helm Chart for Nightscout"

  is_public           = false
  enable_argocd_rules = false

  required_status_checks = []
}

import {
  id = "nightscout-helm"
  to = module.nightscout_repo.github_repository.main
}
