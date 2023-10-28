module "musicbot_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot"
  description            = "Party music queue with songs from various providers"
  required_status_checks = []
  enable_actions         = false
  is_archived            = false
}

module "musicbot_api_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot-API"
  description            = "OpenAPI specification of the MusicBot REST-API"
  required_status_checks = []
  enable_actions         = false
  is_archived            = false
}

module "musicbot_bundler_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot-bundler"
  required_status_checks = []
  enable_actions         = false
  is_archived            = false
}

module "musicbot_desktop_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot-desktop"
  description            = "JavaFX-based implementation of MusicBot for desktop systems"
  required_status_checks = []
  enable_actions         = false
  is_archived            = false
}

module "musicbot_plugins_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "MusicBot-plugins"
  description            = "Collection of official MusicBot plugins"
  required_status_checks = []
  enable_actions         = false
  is_archived            = false
}

module "musicbot_qbert_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.0.1"
  name                   = "Qbert"
  description            = "Android implementation of MusicBot"
  required_status_checks = []
  enable_actions         = false
  is_archived            = false
}
