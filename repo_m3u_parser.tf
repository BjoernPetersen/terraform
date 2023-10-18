module "m3u_parser_repo" {
  source             = "github.com/BlindfoldedSurgery/terraform-repo-module"
  name               = "m3u-parser"
  description        = "An M3U parser written in Kotlin"
  enable_discussions = true
  required_status_checks = [
    "Test and Lint",
    "codecov/patch",
    "WIP",
  ]
}
