module "musicbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot"
  default_branch_name    = "develop"
  description            = "Party music queue with songs from various providers"
  required_status_checks = []
  blocked_branches       = []
  enable_actions         = false
  is_archived            = true
}

module "musicbot_api_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot-API"
  default_branch_name    = "master"
  description            = "OpenAPI specification of the MusicBot REST-API"
  required_status_checks = []
  blocked_branches       = []
  enable_actions         = false
  is_archived            = true
}

module "musicbot_bundler_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot-bundler"
  default_branch_name    = "master"
  required_status_checks = []
  blocked_branches       = []
  enable_actions         = false
  is_public              = false
  is_archived            = true
}

module "musicbot_desktop_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot-desktop"
  default_branch_name    = "develop"
  description            = "JavaFX-based implementation of MusicBot for desktop systems"
  required_status_checks = []
  blocked_branches       = []
  enable_actions         = false
  is_archived            = true
}

module "musicbot_kiu_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "Kiu"
  default_branch_name    = "master"
  description            = "MusicBot client for Android"
  required_status_checks = []
  blocked_branches       = []
  enable_actions         = false
  is_archived            = false
}

module "musicbot_plugins_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot-plugins"
  default_branch_name    = "master"
  description            = "Collection of official MusicBot plugins"
  required_status_checks = []
  blocked_branches       = []
  enable_actions         = false
  is_archived            = true
}

module "musicbot_qbert_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "Qbert"
  default_branch_name    = "master"
  description            = "Android implementation of MusicBot"
  required_status_checks = []
  blocked_branches       = []
  enable_actions         = false
  is_archived            = true
}
