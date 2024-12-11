module "spotify_api_repo" {
  source             = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.1"
  name               = "spotify_api"
  description        = "Spotify Web API wrapper for Dart"
  homepage_url       = "https://pub.dev/packages/spotify_api"
  enable_discussions = true
  required_status_checks = [
    "check-commits / check",
    "Lint",
    "Test",
    "Integration Tests",
    "Check Format",
    "codecov/patch",
  ]
}
