module "spotify_api_repo" {
  source       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.1"
  name         = "spotify_api"
  description  = "Spotify Web API wrapper for Dart"
  homepage_url = "https://pub.dev/packages/spotify_api"

  enable_discussions           = false
  enable_actions               = false
  enable_argocd_rules          = false
  include_required_meta_checks = false

  required_status_checks = []
  blocked_branches       = []

  is_archived = true
}
