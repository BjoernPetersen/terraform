module "cosee_repo_list_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.1"
  name                   = "cosee-repo-list"
  description            = "Automated documentation of my personal projects"
  is_public              = false
  required_status_checks = []
}
