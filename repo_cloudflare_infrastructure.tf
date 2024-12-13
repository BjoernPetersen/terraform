module "cloudflare_infrastructure_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.3"
  name        = "cloudflare-infrastructure"
  description = "Basic infrastructure in Cloudflare for personal projects"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  is_public = false
}

module "cloudflare_infrastructure_terraform" {
  source       = "./modules/terraform_state_access"
  display_name = "GitHub Actions self/cloudflare-infrastructure"
  identifier   = "cloudflare-infrastructure"
}

resource "github_actions_secret" "cloudflare_infrastructure_gsa" {
  repository      = module.cloudflare_infrastructure_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = module.cloudflare_infrastructure_terraform.private_key
}
