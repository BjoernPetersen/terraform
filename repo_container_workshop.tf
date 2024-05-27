module "container_workshop_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name                   = "torben-container-workshop"
  description            = "RIP"
  is_public              = false
  required_status_checks = []
}
