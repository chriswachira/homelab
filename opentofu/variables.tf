variable "cloudflare_account_id" {
  type        = string
  sensitive   = true
  description = "Cloudflare account ID"
}

variable "cloudflare_team_name" {
  type        = string
  sensitive   = true
  description = "Cloudflare team name"
}

variable "cloudflare_tunnel_id" {
  type        = string
  sensitive   = true
  description = "Cloudflare tunnel ID"

}

variable "cloudflare_zone_id" {
  type        = string
  sensitive   = true
  description = "Cloudflare zone ID"
}

variable "cloudflare_zone_name" {
  type        = string
  sensitive   = true
  description = "Cloudflare zone name"
}

variable "cloudflare_zero_trust_idp_github_client_id" {
  type        = string
  sensitive   = true
  description = "Cloudflare GitHub IDP client ID"

}

variable "cloudflare_zero_trust_idp_github_client_secret" {
  type        = string
  sensitive   = true
  description = "Cloudflare GitHub IDP client secret"

}
