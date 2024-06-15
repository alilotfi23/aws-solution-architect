variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-1"
}

variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
  default     = "my-api"
}

variable "stage_name" {
  description = "The name of the deployment stage"
  type        = string
  default     = "dev"
}

variable "lambda_function_name" {
  description = "The name of the Lambda function to integrate with API Gateway"
  type        = string
  default     = "my-lambda-function"
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Owner       = "Ali_lotfi"
  }
}
