# Terraform Block
terraform {
  /*backend "local" {
    path = "terraform_camilo.tfstate"
  }*/
 backend "s3" {
    bucket = "encora-camilo-restrepo-tfstate"
    key    = "aws_infra"
    region = "us-east-1"

    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

 /*backend "remote" {
    hostname = "app.terraform.io"
    organization = "ACG-Terraform-Demos-crestrepo"

    workspaces {
      name = "terraform-upskillig"
    }
   
  }*/

  required_version = "~> 1.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = var.aws_region
  
}


