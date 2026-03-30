output "cloudflare_zero_trust_github_idp_id" {
  value       = cloudflare_zero_trust_access_identity_provider.github.id
  description = "ID of the Cloudflare GitHub IDP"

}
