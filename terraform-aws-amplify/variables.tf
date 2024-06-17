variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "eu-west-1"
}

variable "app_name" {
  description = "The name of the Amplify app."
  type        = string
  default     = "my-amplify-app"
}

variable "environment" {
  description = "The environment for the Amplify app."
  type        = string
  default     = "dev"
}
