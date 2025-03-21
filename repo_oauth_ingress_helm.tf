module "oauth_ingress_helm_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name   = "oauth-ingress-helm"

  is_public           = false
  enable_argocd_rules = false

  required_status_checks = []
}
