module "mq_instance" {
  source               = "../modules/mq_instance"
  broker_name          = var.broker_name
  broker_instance_type = var.broker_instance_type
  engine_type          = var.engine_type
  engine_version       = var.engine_version
  deployment_mode      = var.deployment_mode
  subnet_ids           = var.subnet_ids
  security_group_ids   = var.security_group_ids
}
