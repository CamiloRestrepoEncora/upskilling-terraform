# Security Group Database
module "rdsdb_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"
  vpc_id  = module.vpc.vpc_id

  name        = "mysql-sg"
  description = "Replica MySQL example security group"
  tags        = local.common_tags
  # ingress
  ingress_with_cidr_blocks = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      description = "MySQL access from within VPC"
      cidr_blocks = module.vpc.vpc_cidr_block
    }
  ]
}