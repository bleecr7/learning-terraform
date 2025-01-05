terraform {
  cloud {
    organization = "brandon-lee-private-org"
    workspaces {
      name = "learning-terraform"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}
