variable "cloudflare_account_id" {
  type        = string
  description = "value"
}

variable "cloudflare_tunnel_id" {

}
variable "cloudflare_zone_id" {}
variable "cloudflare_zone_name" {}
variable "cloudflare_team_name" {}
variable "cloudflare_zero_trust_access_apps" {}

variable "cloudflare_zero_trust_lists" {
  type        = list(map(string))
  description = "Cloudflare Zero Trust Access lists"
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
