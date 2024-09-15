module "shutdown_server_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                   = "ShutdownServer"
  description            = "HTTP server to remotely trigger shutdowns (and more)"
  required_status_checks = []
  default_branch_name    = "master"
  blocked_branches       = []
  enable_argocd_rules    = false
  is_archived            = true
}

