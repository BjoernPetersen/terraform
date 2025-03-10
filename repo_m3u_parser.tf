module "m3u_parser_repo" {
  source             = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.2.0"
  name               = "m3u-parser"
  description        = "An M3U parser written in Kotlin"
  enable_discussions = true
  required_status_checks = [
    "codecov/patch",
    "SonarCloud Code Analysis",
    "Test and Lint",
  ]
}
