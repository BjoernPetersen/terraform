module "adventofcode_repo" {
  for_each = {
    "2018" = {
      is_archived   = true,
      is_public     = false,
      language      = "Dart",
      status_checks = [],
    },
    "2019" = {
      is_archived   = true,
      is_public     = true,
      language      = "Dart",
      status_checks = [],
    },
    "2020" = {
      is_archived   = true,
      is_public     = true,
      language      = "Rust",
      status_checks = [],
    },
    "2021" = {
      is_archived   = true,
      is_public     = false,
      language      = "Python",
      status_checks = [],
    },
    "2022" = {
      is_archived   = true,
      is_public     = true,
      language      = "Python",
      status_checks = [],
    },
    "2023" = {
      is_archived = true,
      is_public   = true,
      language    = "Dart",
      status_checks = [
        "Validate Renovate configuration / validate",
        "Test",
        "Check Format",
        "Lint",
      ],
    },
    "2024" = {
      is_archived = false,
      is_public   = true,
      language    = "Dart",
      homepage    = "https://aoc.bjoernpetersen.net/2024/"
      status_checks = [
        "Test",
        "Check Format",
        "All Build Finished",
      ],
    },
  }

  source      = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.0"
  name        = "advent-of-code-${each.key}"
  description = "Advent of Code ${each.key} solutions written in ${each.value.language}"

  include_required_meta_checks = !each.value.is_archived
  required_status_checks       = each.value.status_checks
  is_archived                  = each.value.is_archived
  is_public                    = each.value.is_public
  homepage_url                 = lookup(each.value, "homepage", null)

  enable_argocd_rules = false
}
