module "azure_infrastructure_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name        = "azure-infrastructure"
  description = "Basic infrastructure in Azure for personal projects"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  is_public = false
}

resource "google_service_account" "azure_infrastructure" {
  account_id   = "gha-azure-infrastructure"
  display_name = "GitHub Actions Hetzner repo"
}

resource "google_project_iam_member" "azure_infrastructure_roles" {
  for_each = toset([
    "roles/storage.objectAdmin",
  ])
  project = google_service_account.azure_infrastructure.project
  role    = each.key
  member  = google_service_account.azure_infrastructure.member
}

resource "google_service_account_key" "azure_infrastructure" {
  service_account_id = google_service_account.azure_infrastructure.account_id
}

resource "github_actions_secret" "azure_infrastructure_gsa" {
  repository      = module.azure_infrastructure_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = base64decode(google_service_account_key.azure_infrastructure.private_key)
}
