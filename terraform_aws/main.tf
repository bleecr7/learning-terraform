terraform {
  cloud {
    organization = "brandon-lee-private-org"
    workspaces {
      name="learning-terraform"
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

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0010421e563b093a8"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
