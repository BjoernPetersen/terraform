module "sane_uuid_repo" {
  source             = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name               = "sane_uuid"
  description        = "UUID generation and parsing with a reasonable interface"
  homepage_url       = "https://pub.dev/packages/sane_uuid"
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
