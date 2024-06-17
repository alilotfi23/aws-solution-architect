variable "function_name" {
  description = "The name of the Lambda function."
  type        = string
}

variable "handler" {
  description = "The function handler to be called."
  type        = string
}

variable "runtime" {
  description = "The runtime environment for the Lambda function."
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role that Lambda assumes when it executes your function."
  type        = string
}

variable "source_code_s3_bucket" {
  description = "The S3 bucket that contains the Lambda function source code."
  type        = string
}

variable "source_code_s3_key" {
  description = "The S3 key that identifies the Lambda function source code."
  type        = string
}

variable "environment_variables" {
  description = "A map of environment variables to pass to the Lambda function."
  type        = map(string)
  default     = {}
}
