module "self_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.3"
  name   = "terraform"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  description    = "GitHub repos managed with Terraform"
  enable_actions = true
}


module "self_terraform" {
  source       = "./modules/terraform_state_access"
  display_name = "GitHub Actions self/terraform"
  identifier   = "self-terraform"
  additional_roles = [
    "roles/iam.securityReviewer",
    "roles/iam.serviceAccountViewer",
  ]
}

resource "github_actions_secret" "self_gsa" {
  repository      = module.self_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = module.self_terraform.private_key
}
