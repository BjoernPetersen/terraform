module "hetzner_plex_repo" {
  source = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name   = "hetzner-plex"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  description = "Hetzner Cloud Plex project"
  is_public   = false
}

resource "google_service_account" "hetzner_plex" {
  account_id   = "github-actions-ci-hetzner"
  display_name = "GitHub Actions Hetzner repo"
}

resource "google_project_iam_member" "hetzner_plex_roles" {
  for_each = toset([
    "roles/storage.objectAdmin",
  ])
  project = google_service_account.hetzner_plex.project
  role    = each.key
  member  = google_service_account.hetzner_plex.member
}

resource "google_service_account_key" "hetzner" {
  service_account_id = google_service_account.hetzner_plex.account_id
}

resource "github_actions_secret" "hetzner_gsa" {
  repository      = module.hetzner_plex_repo.name
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = base64decode(google_service_account_key.hetzner.private_key)
}
