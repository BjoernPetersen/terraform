module "mixology_api_repo" {
  source       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.0.0"
  name         = "mixology-api"
  description  = "Remixes your Spotify playlists"
  homepage_url = "https://mix-api.bembel.party/"
  required_status_checks = [
    "check-format",
    "lint",
    "build-app-image",
    "WIP",
  ]
}

module "mixology_frontend_repo" {
  source       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v1.0.0"
  name         = "mixology-frontend"
  description  = "The Mixology frontend"
  homepage_url = "https://mix.bembel.party"
  required_status_checks = [
    "Check Format",
    "Lint",
    "Build Web Package",
    "Build Container Package",
    "WIP",
  ]
}
