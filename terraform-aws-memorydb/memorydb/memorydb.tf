module "memorydb_cluster" {
  source               = "../modules/memorydb_cluster"
  cluster_name         = var.cluster_name
  node_type            = var.node_type
  num_replicas         = var.num_replicas
  num_shards           = var.num_shards
  subnet_ids           = var.subnet_ids
  security_group_ids   = var.security_group_ids
  parameter_group_name = var.parameter_group_name
  snapshot_window      = var.snapshot_window
  snapshot_retention_limit = var.snapshot_retention_limit
}
