// Create an SQS queue
resource "aws_sqs_queue" "example_queue" {
  name                      = "example-queue-${var.environment}"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
}

// Example SNS topic
resource "aws_sns_topic" "example_topic" {
  name = "example-topic-${var.environment}"
}

// Example subscription to SNS topic
resource "aws_sns_topic_subscription" "example_subscription" {
  topic_arn = aws_sns_topic.example_topic.arn
  protocol  = "email"
  endpoint  = "example@example.com"
}

// Define outputs for SQS submodule
output "sqs_queue_urls" {
  value = aws_sqs_queue.example_queue.id
}
