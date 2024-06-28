module "ecs" {
  source               = "../modules/ecs"
  cluster_name         = var.cluster_name
  task_definition_name = var.task_definition_name
  container_name       = var.container_name
  container_image      = var.container_image
  container_port       = var.container_port
  desired_count        = var.desired_count
  vpc_id               = var.vpc_id
  subnet_ids           = var.subnet_ids
  security_group_ids   = var.security_group_ids
  tags                 = var.tags
}
