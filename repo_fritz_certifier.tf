module "fritz_certifier_repo" {
  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name        = "fritz-certifier"
  description = "Automatically updates TLS certificate on Fritz!Box"
  is_public   = false
}
