module "mixology_api_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.1"
  name                = "mixology-api"
  description         = "Remixes your Spotify playlists"
  homepage_url        = "https://mix-api.bembel.party/"
  enable_argocd_rules = true
  required_status_checks = [
    "check-format",
    "lint",
    "build-app-image / build",
    "build-migrations-image / build",
  ]
}

module "mixology_frontend_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.1"
  name                = "mixology-frontend"
  description         = "The Mixology frontend"
  homepage_url        = "https://mix.bembel.party"
  enable_argocd_rules = true
  required_status_checks = [
    "Check Format",
    "Lint",
    "build-container-image / build",
  ]
}
