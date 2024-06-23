resource "aws_rds_cluster" "this" {
  cluster_identifier      = var.cluster_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  master_username         = var.master_username
  master_password         = var.master_password
  database_name           = var.db_name
  vpc_security_group_ids  = var.vpc_security_group_ids
  db_subnet_group_name    = var.db_subnet_group_name
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window
  apply_immediately       = var.apply_immediately

  tags = {
    Name = var.cluster_identifier
  }
}

resource "aws_rds_cluster_instance" "this" {
  count                    = 1
  identifier               = "${var.cluster_identifier}-instance-${count.index + 1}"
  cluster_identifier       = aws_rds_cluster.this.id
  instance_class           = var.instance_class
  engine                   = var.engine
  engine_version           = var.engine_version
  publicly_accessible      = false
  db_subnet_group_name     = var.db_subnet_group_name

  tags = {
    Name = "${var.cluster_identifier}-instance-${count.index + 1}"
  }
}

output "cluster_endpoint" {
  value = aws_rds_cluster.this.endpoint
}

output "reader_endpoint" {
  value = aws_rds_cluster.this.reader_endpoint
}
