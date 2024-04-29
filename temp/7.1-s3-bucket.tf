/*resource "aws_s3_bucket" "mybucket" {
  bucket        = "mybucket"
  force_destroy = true          # This option enables Terraform to destroy the bucket even if it's not empty
  region = var.aws_region
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}*/