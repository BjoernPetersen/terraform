module "azure_infrastructure_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name        = "azure-infrastructure"
  description = "Basic infrastructure in Azure for personal projects"
  required_status_checks = [
    "fmt", "validate"
  ]
  is_public = false
}
