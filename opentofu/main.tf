module "aws" {
  source = "./modules/aws"
}

module "cloudflare" {
  source = "./modules/cloudflare"

  cloudflare_zone_name                           = var.cloudflare_zone_name
  cloudflare_account_id                          = var.cloudflare_account_id
  cloudflare_team_name                           = var.cloudflare_team_name
  cloudflare_tunnel_id                           = var.cloudflare_tunnel_id
  cloudflare_zone_id                             = var.cloudflare_zone_id
  cloudflare_zero_trust_access_apps              = local.cloudflare_zero_trust_access_apps
  cloudflare_zero_trust_lists                    = local.cloudflare_zero_trust_lists
  cloudflare_zero_trust_idp_github_client_id     = var.cloudflare_zero_trust_idp_github_client_id
  cloudflare_zero_trust_idp_github_client_secret = var.cloudflare_zero_trust_idp_github_client_secret

}
