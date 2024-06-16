# Configure the AWS provider
provider "aws" {
  region = var.aws_region
}

# Define the SNS topic
resource "aws_sns_topic" "my_topic" {
  name = var.sns_topic_name

  # Optional display name for the topic
  display_name = var.sns_topic_display_name

  # Tags for the SNS topic (if needed)
  tags = var.sns_topic_tags
}

# Example subscription to an email endpoint
resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.my_topic.arn
  protocol  = "email"
  endpoint  = var.email_subscription_endpoint
}
