# Go Getting Started with Terraform

A Terraform configuration to deploy the [heroku/go-getting-started](https://github.com/heroku/go-getting-started) app ☁️🌱

```
git clone https://github.com/mars/go-getting-started-terraform.git
cd go-getting-started-terraform/

heroku login
terraform apply
```

Optionally, you may set the Terraform [input variables](variables.tf) to:
- set the API key, instead of `heroku login`
- set the app name to create (must not already exist)
- select the Heroku team for the app (must already exist).
