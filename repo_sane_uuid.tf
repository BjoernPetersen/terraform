module "sane_uuid_repo" {
  source             = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.1.1"
  name               = "sane_uuid"
  description        = "UUID generation and parsing with a sane interface"
  enable_discussions = true
  required_status_checks = [
    "validate-renovate-config / validate",
    "Lint",
    "Test",
    "Check Format",
    "WIP",
    "codecov/patch",
  ]
}
