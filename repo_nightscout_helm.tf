module "nightscout_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.1"
  name        = "nightscout-helm"
  description = "Helm Chart for Nightscout"

  is_public           = true
  enable_argocd_rules = false

  required_status_checks = [
    "post-build-container-image",
  ]
}
