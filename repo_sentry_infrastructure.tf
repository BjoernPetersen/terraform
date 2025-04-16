module "sentry_infrastructure_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name        = "sentry-infrastructure"
  description = "Infrastructure in Sentry for personal projects"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  is_public = false
}

module "sentry_infrastructure_terraform" {
  source       = "./modules/terraform_state_access"
  display_name = "GitHub Actions self/sentry-infrastructure"
  identifier   = "sentry-infrastructure"
}

resource "github_actions_secret" "sentry_infrastructure_gsa" {
  repository      = module.sentry_infrastructure_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = module.sentry_infrastructure_terraform.private_key
}
