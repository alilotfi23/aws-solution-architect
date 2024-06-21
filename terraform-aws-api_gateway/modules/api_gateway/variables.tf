variable "api_name" {
  description = "The name of the API Gateway."
  type        = string
}

variable "stage_name" {
  description = "The name of the deployment stage."
  type        = string
}

variable "description" {
  description = "Description of the API Gateway."
  type        = string
}

variable "endpoint_type" {
  description = "The endpoint type of the API Gateway (EDGE, REGIONAL, PRIVATE)."
  type        = string
}

variable "lambda_function_arn" {
  description = "The ARN of the Lambda function to integrate with the API Gateway."
  type        = string
}
