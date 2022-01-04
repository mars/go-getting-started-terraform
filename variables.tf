variable "heroku_api_key" {
  type        = string
  description = "Heroku API key for provsioning & configuring this Terraform configuration"
  sensitive   = true
}

variable "heroku_app_name" {
  type        = string
  description = "Name for the example Heroku app"
}

variable "heroku_team" {
  type        = string
  description = "Heroku Team provsioning & configuring this Terraform configuration"
}
