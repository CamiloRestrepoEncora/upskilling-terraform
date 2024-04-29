# Define Local Values in Terraform
locals {
  owners      = var.business_divsion                         #devops
  environment = var.environment                              #dev
  name        = "${var.business_divsion}-${var.environment}" #devops-dev
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
} 