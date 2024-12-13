module "container_workshop_repo" {
  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.3"
  name                   = "torben-container-workshop"
  description            = "RIP"
  is_public              = false
  required_status_checks = []
}
