variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "secret_name" {
  description = "The name of the secret."
  type        = string
}

variable "secret_value" {
  description = "The value of the secret."
  type        = string
}

variable "description" {
  description = "The description of the secret."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to assign to the AWS Secrets Manager resources."
  type        = map(string)
  default     = {}
}
