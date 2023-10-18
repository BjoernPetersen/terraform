module "spotify_api_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name        = "spotify_api"
  description = "Spotify Web API wrapper for Dart"
  required_status_checks = [
    "Lint",
    "Test",
    "Integration Tests",
    "Check Format",
    "codecov/patch",
    "WIP",
  ]
}
