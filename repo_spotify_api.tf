module "spotify_api_repo" {
  source             = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v3.0.0"
  name               = "spotify_api"
  description        = "Spotify Web API wrapper for Dart"
  enable_discussions = true
  required_status_checks = [
    "Lint",
    "Test",
    "Integration Tests",
    "Check Format",
    "codecov/patch",
    "WIP",
  ]
}
