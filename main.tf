terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 4.8.0"
    }
  }
}

provider "heroku" {
  api_key = var.heroku_api_key
}

resource "heroku_app" "example" {
  name   = var.heroku_app_name
  region = "us"

  organization {
    name = var.heroku_team
  }
}

resource "heroku_build" "example" {
  app = heroku_app.example.id

  source {
    url = "https://github.com/heroku/go-getting-started/archive/refs/heads/main.tar.gz"
  }
}
