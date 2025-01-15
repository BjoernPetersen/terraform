module "terraform_provider_homeassistant_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.1"
  name                = "terraform-provider-homeassistant"
  description         = "Terraform Provider for Home-Assistant"
  enable_argocd_rules = false
  required_status_checks = [
    "build-container-image / build"
  ]
  allow_default_branch_protection_bypass = true
  is_public                              = false
}
