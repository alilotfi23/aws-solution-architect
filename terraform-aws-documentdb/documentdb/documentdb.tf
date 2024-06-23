module "documentdb_cluster" {
  source                  = "../modules/documentdb_cluster"
  cluster_identifier      = var.cluster_identifier
  instance_class          = var.instance_class
  master_username         = var.master_username
  master_password         = var.master_password
  db_subnet_group_name    = var.db_subnet_group_name
  vpc_security_group_ids  = var.vpc_security_group_ids
  apply_immediately       = var.apply_immediately
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window
}
