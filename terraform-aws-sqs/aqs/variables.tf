// Variables specific to SQS
variable "environment" {
  description = "Environment (e.g., dev, prod)"
  default     = "dev"
}

variable "sqs_queue_name" {
  description = "Name for the SQS queue"
  default     = "example-queue"
}
