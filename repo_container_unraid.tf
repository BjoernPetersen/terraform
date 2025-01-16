module "container_unraid_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.3"
  name        = "container-unraid"
  description = "Mirrored images used by Unraid"

  is_public           = false
  enable_argocd_rules = false

  required_status_checks = []
}
