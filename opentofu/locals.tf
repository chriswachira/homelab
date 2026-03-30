locals {
  config     = yamldecode(file("./config.yaml"))
  cloudflare = local.config.cloudflare

  cloudflare_zero_trust_access_apps = local.cloudflare.zero_trust.applications
  cloudflare_zero_trust_lists       = local.cloudflare.zero_trust.lists

}
