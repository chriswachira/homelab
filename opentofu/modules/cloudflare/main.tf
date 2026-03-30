resource "cloudflare_zero_trust_access_identity_provider" "github" {
  name = "Github IDP"
  type = "github"
  config = {
    client_id     = var.cloudflare_zero_trust_idp_github_client_id
    client_secret = var.cloudflare_zero_trust_idp_github_client_secret
  }
  account_id = var.cloudflare_account_id
}

resource "cloudflare_zero_trust_access_application" "app" {
  for_each = {
    for app in var.cloudflare_zero_trust_access_apps : app.name => app
  }

  zone_id                   = var.cloudflare_zone_id
  name                      = each.value.name
  domain                    = "${each.value.subdomain}.${var.cloudflare_zone_name}"
  type                      = each.value.type
  session_duration          = "72h"
  auto_redirect_to_identity = false
  allowed_idps              = [cloudflare_zero_trust_access_identity_provider.github.id]

}

resource "cloudflare_zero_trust_list" "this" {
  for_each = {
    for list in var.cloudflare_zero_trust_lists : list.name => list
  }

  account_id  = var.cloudflare_account_id
  name        = each.value.name
  type        = each.value.type
  description = each.value.description

}
