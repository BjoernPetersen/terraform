module "scaleway_infrastructure_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name        = "scaleway-infrastructure"
  description = "Infrastructure in Scaleway for personal projects"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  is_public = false
}

module "scaleway_infrastructure_terraform" {
  source       = "./modules/terraform_state_access"
  display_name = "GitHub Actions self/scaleway-infrastructure"
  identifier   = "scaleway-infrastructure"
}

resource "github_actions_secret" "scaleway_infrastructure_gsa" {
  repository      = module.scaleway_infrastructure_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = module.scaleway_infrastructure_terraform.private_key
}
