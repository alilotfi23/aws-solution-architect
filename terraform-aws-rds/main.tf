provider "aws" {
  region = var.region
}

module "rds_instance" {
  source                  = "./modules/rds_instance"
  db_instance_identifier  = var.db_instance_identifier
  allocated_storage       = var.allocated_storage
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  username                = var.username
  password                = var.password
  db_name                 = var.db_name
  publicly_accessible     = var.publicly_accessible
  subnet_group_name       = var.subnet_group_name
  vpc_security_group_ids  = var.vpc_security_group_ids
  parameter_group_name    = var.parameter_group_name
  backup_retention_period = var.backup_retention_period
  multi_az                = var.multi_az
}

output "rds_endpoint" {
  value = module.rds_instance.rds_endpoint
}
