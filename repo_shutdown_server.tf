module "shutdown_server_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name                = "ShutdownServer"
  description         = "HTTP server to remotely trigger shutdowns (and more)"
  default_branch_name = "master"

  required_status_checks = []
  blocked_branches       = []

  enable_argocd_rules          = false
  is_archived                  = true
  include_required_meta_checks = false
}

