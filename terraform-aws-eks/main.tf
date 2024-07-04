provider "aws" {
  region = var.region
}

module "eks" {
  source              = "./modules/eks"
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

output "eks_cluster_id" {
  value = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_cluster_arn" {
  value = module.eks.cluster_arn
}

output "eks_node_group_id" {
  value = module.eks.node_group_id
}
