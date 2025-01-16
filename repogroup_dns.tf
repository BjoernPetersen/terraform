locals {
  dns_repos = {
    "bembel-dns-config" : {
      domain         = "bembel.party"
      gsa_identifier = "bembel-dns"
    }
    "bjoernpetersen-dns-config" : {
      domain         = "bjoernpetersen.net"
      gsa_identifier = "self-dns"
    }
    "bs-dns-config" : {
      domain         = "blindfolded.surgery"
      gsa_identifier = "bs-dns"
    }
    "wg-dns-config" : {
      domain         = "kasino-wg.party"
      gsa_identifier = "wg-dns"
    }
  }
}

module "dns_repos" {
  for_each = local.dns_repos

  source       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v9.1.3"
  name         = each.key
  homepage_url = "https://${each.value.domain}"

  is_public           = false
  enable_argocd_rules = false

  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
}

module "dns_repo_gsa" {
  for_each     = local.dns_repos
  source       = "./modules/terraform_state_access"
  identifier   = each.value.gsa_identifier
  display_name = "GitHub Actions self/${each.key}"
}

resource "github_actions_secret" "dns_repo_gsa" {
  for_each        = local.dns_repos
  repository      = each.key
  secret_name     = "GOOGLE_SA_JSON"
  plaintext_value = module.dns_repo_gsa[each.key].private_key

  depends_on = [module.dns_repos]
}
