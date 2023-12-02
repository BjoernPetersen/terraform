module "adventofcode_repo" {
  for_each = {
    "2018" = {
      is_archived = true,
      is_public   = false,
      language    = "Dart"
    },
    "2019" = {
      is_archived = true,
      is_public   = true,
      language    = "Dart"
    },
    "2020" = {
      is_archived = true,
      is_public   = true,
      language    = "Rust"
    },
    "2021" = {
      is_archived = true,
      is_public   = false,
      language    = "Python"
    },
    "2022" = {
      is_archived = true,
      is_public   = true,
      language    = "Python"
    },
  }

  source                 = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v5.0.0"
  name                   = "advent-of-code-${each.key}"
  description            = "Advent of Code ${each.key} solutions written in ${each.value.language}"
  required_status_checks = []
  is_archived            = each.value.is_archived
  is_public              = each.value.is_public
}
