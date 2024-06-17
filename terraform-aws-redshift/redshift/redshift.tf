module "redshift_cluster" {
  source              = "../modules/redshift_cluster"
  cluster_identifier  = var.cluster_identifier
  node_type           = var.node_type
  number_of_nodes     = var.number_of_nodes
  master_username     = var.master_username
  master_password     = var.master_password
  db_name             = var.db_name
  cluster_type        = var.cluster_type
  port                = var.port
  subnet_ids          = var.subnet_ids
  security_group_ids  = var.security_group_ids
  parameter_group_name = var.parameter_group_name
  iam_roles           = var.iam_roles
}
