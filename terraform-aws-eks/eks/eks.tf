module "eks" {
  source              = "../modules/eks"
  cluster_name        = var.cluster_name
  cluster_version     = var.cluster_version
  vpc_id              = var.vpc_id
  subnet_ids          = var.subnet_ids
  node_group_name     = var.node_group_name
  node_instance_type  = var.node_instance_type
  desired_capacity    = var.desired_capacity
  min_size            = var.min_size
  max_size            = var.max_size
  key_name            = var.key_name
  tags                = var.tags
}
