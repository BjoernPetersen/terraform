module "renovate_reproduction_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                   = "renovate-reproduction"
  description            = "Minimal reproduction for https://github.com/renovatebot/renovate/discussions/31572"
  is_public              = true
  enable_argocd_rules    = false
  required_status_checks = []
}
