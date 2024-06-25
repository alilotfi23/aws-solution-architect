variable "user_pool_name" {
  description = "The name of the Cognito user pool."
  type        = string
}

variable "user_pool_domain" {
  description = "The domain name for the Cognito user pool."
  type        = string
}

variable "user_pool_client_name" {
  description = "The name of the Cognito user pool client."
  type        = string
}

variable "user_pool_client_callback_urls" {
  description = "The list of allowed callback URLs for the Cognito user pool client."
  type        = list(string)
}

variable "user_pool_client_logout_urls" {
  description = "The list of allowed logout URLs for the Cognito user pool client."
  type        = list(string)
}

variable "identity_pool_name" {
  description = "The name of the Cognito identity pool."
  type        = string
}

variable "supported_login_providers" {
  description = "The map of supported login providers for the Cognito identity pool."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to assign to the Cognito resources."
  type        = map(string)
  default     = {}
}
