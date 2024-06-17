output "mq_broker_id" {
  value = aws_mq_broker.this.id
}

output "mq_broker_arn" {
  value = aws_mq_broker.this.arn
}

output "mq_broker_url" {
  value = aws_mq_broker.this.instances[0].endpoints[0]
}
