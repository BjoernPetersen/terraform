module "azure_infrastructure_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.4.0"
  name        = "azure-infrastructure"
  description = "Basic infrastructure in Azure for personal projects"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  is_public = false
}

module "azure_infrastructure_terraform" {
  source       = "./modules/terraform_state_access"
  display_name = "GitHub Actions self/azure-infrastructure"
  identifier   = "azure-infrastructure"
}

resource "github_actions_secret" "azure_infrastructure_gsa" {
  repository      = module.azure_infrastructure_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = module.azure_infrastructure_terraform.private_key
}
