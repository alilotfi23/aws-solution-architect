resource "aws_db_instance" "this" {
  identifier             = var.db_instance_identifier
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  name                   = var.db_name
  username               = var.username
  password               = var.password
  publicly_accessible    = var.publicly_accessible
  db_subnet_group_name   = var.subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  parameter_group_name   = var.parameter_group_name
  backup_retention_period = var.backup_retention_period
  multi_az               = var.multi_az

  tags = {
    Name = var.db_instance_identifier
  }
}

output "rds_endpoint" {
  value = aws_db_instance.this.endpoint
}
