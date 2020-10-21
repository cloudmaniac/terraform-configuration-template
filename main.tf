## Terraform Initialization
# 1/ Forcing to Terraform 0.13
# 2/ Defining the source for the providers (and potentially their versions)
# 3/ Defining the backend if not local

terraform {
  required_version = ">= 0.13"

  #   required_providers {
  #     aws = {
  #       source = "hashicorp/aws"
  #     }
  #   }

  #   backend "remote" {
  #     hostname     = "app.terraform.io"
  #     organization = "cloudmaniac"

  #     workspaces {
  #       name = "cloudmaniac-prod"
  #     }
  #   }
}


provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}