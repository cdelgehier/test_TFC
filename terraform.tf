terraform {
  required_version = ">= 1.1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "cdelgehier-certif"
    workspaces { name = "test_TFC" }
  }
}