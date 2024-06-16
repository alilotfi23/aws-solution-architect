// Outputs for the whole project
output "vpc_id" {
  value = aws_vpc.example_vpc.id
}

// Outputs from submodule
output "sqs_queue_urls" {
  value = module.sqs_module.sqs_queue_urls
}

output "iam_role_arns" {
  value = module.iam_module.iam_role_arns
}
