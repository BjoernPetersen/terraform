module "cloudflare_dyndns_repo" {
  source       = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v6.0.0"
  name         = "cloudflare-dyndns"
  description  = "FRITZ!Box-compatible DynDNS service for a Cloudflare-managed DNS zone"
  is_public    = false
  homepage_url = "https://dyndns.bjoernpetersen.net"
}
