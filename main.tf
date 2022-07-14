terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 5.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.0"
    }
  }
}

provider "heroku" {
  # when blank, allows the provider to lookup API key in Netrc 
  api_key = var.heroku_api_key != "" ? var.heroku_api_key : null
}

resource "random_pet" "app_name" {
  length    = 2
  prefix    = "go-getting"
  separator = "-"
}

resource "heroku_app" "example" {
  name   = var.heroku_app_name != "" ? var.heroku_app_name : random_pet.app_name.id
  region = "us"

  dynamic "organization" {
    # only set organization when Heroku team is present
    for_each = var.heroku_team != "" ? [1] : []
    content {
      name = var.heroku_team
    }
  }
}

resource "heroku_build" "example" {
  app_id = heroku_app.example.id

  source {
    url = "https://github.com/heroku/go-getting-started/archive/refs/heads/main.tar.gz"
  }
}
