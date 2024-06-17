provider "aws" {
  region = var.region
}

module "mq_instance" {
  source               = "./modules/mq_instance"
  broker_name          = var.broker_name
  broker_instance_type = var.broker_instance_type
  engine_type          = var.engine_type
  engine_version       = var.engine_version
  deployment_mode      = var.deployment_mode
  subnet_ids           = var.subnet_ids
  security_group_ids   = var.security_group_ids
}

output "mq_broker_id" {
  value = module.mq_instance.mq_broker_id
}

output "mq_broker_arn" {
  value = module.mq_instance.mq_broker_arn
}

output "mq_broker_url" {
  value = module.mq_instance.mq_broker_url
}
