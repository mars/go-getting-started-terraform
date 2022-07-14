variable "heroku_api_key" {
  type        = string
  description = "Heroku API key for provsioning & configuring this Terraform configuration (if blank, will attempt to use local Heroku login in Netrc)"
  sensitive   = true
  default     = ""
}

variable "heroku_app_name" {
  type        = string
  description = "Name for the example Heroku app"
  default     = ""
}

variable "heroku_team" {
  type        = string
  description = "Heroku Team provisioning & configuring this Terraform configuration (if blank, will be a personal app)"
  default     = ""
}
