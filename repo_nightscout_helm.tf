module "nightscout_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.3"
  name        = "nightscout-helm"
  description = "Helm Chart for Nightscout"

  is_public           = false
  enable_argocd_rules = false

  required_status_checks = [
    "post-build-container-image",
  ]
}
