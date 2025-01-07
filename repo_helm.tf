module "helm_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.0.2"
  name        = "container-helm"
  description = "Container image based on Debian with kubectl and helm installed"
  required_status_checks = [
    "check / check",
    "post-build-container-image",
  ]
}
