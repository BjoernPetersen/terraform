module "cloudflare_infrastructure_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name        = "cloudflare-infrastructure"
  description = ""
  required_status_checks = [
    "fmt", "validate"
  ]
  is_public = false
}
