module "cloudflare_infrastructure_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name        = "cloudflare-infrastructure"
  description = "Basic infrastructure in Cloudflare for personal projects"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  is_public = false
}

resource "google_service_account" "cloudflare_infrastructure" {
  account_id   = "gha-cloudflare-infrastructure"
  display_name = "GitHub Actions Hetzner repo"
}

resource "google_project_iam_member" "cloudflare_infrastructure_roles" {
  for_each = toset([
    "roles/storage.objectAdmin",
  ])
  project = google_service_account.cloudflare_infrastructure.project
  role    = each.key
  member  = google_service_account.cloudflare_infrastructure.member
}

resource "google_service_account_key" "cloudflare_infrastructure" {
  service_account_id = google_service_account.cloudflare_infrastructure.account_id
}

resource "github_actions_secret" "cloudflare_infrastructure_gsa" {
  repository      = module.cloudflare_infrastructure_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = base64decode(google_service_account_key.cloudflare_infrastructure.private_key)
}
