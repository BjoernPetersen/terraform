module "cosee_repo_list_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                   = "cosee-repo-list"
  description            = "Automated documentation of my personal projects"
  is_public              = false
  required_status_checks = []
}
