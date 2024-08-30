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
    "wg-dns-config" : {
      domain         = "kasino-wg.party"
      gsa_identifier = "wg-dns"
    }
  }
}

module "dns_repos" {
  for_each     = local.dns_repos
  source       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name         = each.key
  homepage_url = "https://${each.value.domain}"
  required_status_checks = [
    "fmt",
    "validate",
    "plan",
  ]
  is_public = false
}

module "dns_repo_gsa" {
  for_each     = local.dns_repos
  source       = "./modules/terraform_state_access"
  identifier   = each.value.gsa_identifier
  display_name = "GitHub Actions self/${each.key}"
}
