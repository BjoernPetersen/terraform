resource "google_service_account" "main" {
  account_id   = "gha-${var.identifier}"
  display_name = var.display_name
}

resource "google_project_iam_member" "main" {
  for_each = toset(concat(
    var.additional_roles,
    [
      "roles/storage.objectAdmin",
    ],
  ))
  project = google_service_account.main.project
  role    = each.key
  member  = google_service_account.main.member
}

resource "google_service_account_key" "main" {
  service_account_id = google_service_account.main.account_id
}
