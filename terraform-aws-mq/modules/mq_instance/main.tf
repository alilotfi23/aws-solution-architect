resource "aws_mq_broker" "this" {
  broker_name          = var.broker_name
  broker_instance_type = var.broker_instance_type
  engine_type          = var.engine_type
  engine_version       = var.engine_version
  deployment_mode      = var.deployment_mode
  subnet_ids           = var.subnet_ids
  security_groups      = var.security_group_ids

  user {
    username = "admin"
    password = "YourSecurePassword"
  }
}

output "mq_broker_id" {
  value = aws_mq_broker.this.id
}

output "mq_broker_arn" {
  value = aws_mq_broker.this.arn
}

output "mq_broker_url" {
  value = aws_mq_broker.this.instances[0].endpoints[0]
}
