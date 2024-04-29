################################################################################
# Master DB
################################################################################

resource "aws_db_instance" "master" {
  identifier            = "${var.namedb}-master"
  engine                = var.engine
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  db_name               = "replicaMysql"
  username              = "replica_mysql"
  password              = "replica_mysql_password"
  port                  = var.port
  multi_az              = true
  #multi_az                        = false
  db_subnet_group_name            = module.vpc.database_subnet_group_name
  vpc_security_group_ids          = [module.rdsdb_sg.security_group_id]
  maintenance_window              = "Mon:00:00-Mon:03:00"
  backup_window                   = "03:00-06:00"
  enabled_cloudwatch_logs_exports = ["general"]
  backup_retention_period         = 1
  skip_final_snapshot             = true
  deletion_protection             = false
}

################################################################################
# Replica DB
################################################################################

resource "aws_db_instance" "replica" {
  identifier                      = "${var.namedb}-replica"
  engine                          = var.engine
  engine_version                  = var.engine_version
  instance_class                  = var.instance_class
  allocated_storage               = var.allocated_storage
  max_allocated_storage           = var.max_allocated_storage
  username                        = "replica_mysql"
  port                            = var.port
  manage_master_user_password     = true
  multi_az                        = false
  db_subnet_group_name            = module.vpc.database_subnet_group_name
  vpc_security_group_ids          = [module.rdsdb_sg.security_group_id]
  maintenance_window              = "Tue:00:00-Tue:03:00"
  backup_window                   = "03:00-06:00"
  enabled_cloudwatch_logs_exports = ["general"]
  backup_retention_period         = 0
  skip_final_snapshot             = true
  deletion_protection             = false
}
