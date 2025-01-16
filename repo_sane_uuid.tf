module "sane_uuid_repo" {
  source             = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.3"
  name               = "sane_uuid"
  description        = "UUID generation and parsing with a reasonable interface"
  homepage_url       = "https://pub.dev/packages/sane_uuid"
  enable_discussions = true
  required_status_checks = [
    "Lint",
    "Test",
    "Check Format",
    "codecov/patch",
  ]
}
