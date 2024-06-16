variable "aws_region" {
  description = "AWS region where the SNS topic will be deployed"
}

variable "sns_topic_name" {
  description = "Name of the SNS topic to be created"
}

variable "sns_topic_display_name" {
  description = "Display name for the SNS topic (optional)"
  default     = null
}

variable "sns_topic_tags" {
  description = "Tags to apply to the SNS topic"
  type        = map(string)
  default     = {}
}

variable "email_subscription_endpoint" {
  description = "Email address to subscribe to the SNS topic"
}
