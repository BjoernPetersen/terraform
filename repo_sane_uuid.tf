module "sane_uuid_repo" {
  source             = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v4.1.0"
  name               = "sane_uuid"
  description        = "UUID generation and parsing with a sane interface"
  enable_discussions = true
  enable_projects    = true
  required_status_checks = [
    "Lint",
    "Test",
    "Check Format",
    "WIP",
  ]
}
