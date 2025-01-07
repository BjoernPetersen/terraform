module "helm_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.3"
  name        = "container-helm"
  description = "Container image based on Debian with kubectl and helm installed"
  required_status_checks = [
    "check / check",
    "post-build-container-image",
  ]
}
