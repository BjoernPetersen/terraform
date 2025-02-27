module "mixology_api_repo" {
  source       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name         = "mixology-api"
  description  = "Remixes your Spotify playlists"
  homepage_url = "https://mix-api.bembel.party/"

  enable_argocd_rules          = false
  include_required_meta_checks = false
  enable_actions               = false
  required_status_checks       = []
  blocked_branches             = []

  is_archived = true
}

module "mixology_frontend_repo" {
  source       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name         = "mixology-frontend"
  description  = "The Mixology frontend"
  homepage_url = "https://mix.bembel.party"

  enable_argocd_rules          = false
  include_required_meta_checks = false
  enable_actions               = false
  required_status_checks       = []
  blocked_branches             = []

  is_archived = true
}
