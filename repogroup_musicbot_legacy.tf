module "musicbot_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "MusicBot"
  default_branch_name = "develop"
  description         = "Party music queue with songs from various providers"

  required_status_checks = []
  blocked_branches       = []

  enable_actions               = false
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
}

module "musicbot_api_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "MusicBot-API"
  default_branch_name = "master"
  description         = "OpenAPI specification of the MusicBot REST-API"

  required_status_checks = []
  blocked_branches       = []

  enable_actions               = false
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
}

module "musicbot_bundler_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "MusicBot-bundler"
  default_branch_name = "master"

  required_status_checks = []
  blocked_branches       = []

  enable_actions               = false
  is_public                    = false
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
}

module "musicbot_desktop_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "MusicBot-desktop"
  default_branch_name = "develop"
  description         = "JavaFX-based implementation of MusicBot for desktop systems"

  required_status_checks = []
  blocked_branches       = []

  enable_actions               = false
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
}

module "musicbot_kiu_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "Kiu"
  default_branch_name = "master"
  description         = "MusicBot client for Android"

  required_status_checks = []
  blocked_branches       = []

  enable_actions               = false
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
}

module "musicbot_plugins_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "MusicBot-plugins"
  default_branch_name = "master"
  description         = "Collection of official MusicBot plugins"

  required_status_checks = []
  blocked_branches       = []

  enable_actions               = false
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
}

module "musicbot_qbert_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "Qbert"
  default_branch_name = "master"
  description         = "Android implementation of MusicBot"

  required_status_checks = []
  blocked_branches       = []

  enable_actions               = false
  is_archived                  = true
  include_required_meta_checks = false
  enable_argocd_rules          = false
}
