variable "policy_name" {
  description = "The name of the Firewall Manager policy."
  type        = string
}

variable "security_service" {
  description = "The security service policy data (e.g., WAF, Shield Advanced)."
  type        = object({
    type = string
    managed_service_data = string
  })
}

variable "resource_type" {
  description = "The type of resource to protect."
  type        = string
}

variable "exclude_resource" {
  description = "The resource ARN to exclude from the policy."
  type        = list(string)
  default     = []
}

variable "exclude_resource_type" {
  description = "The resource type to exclude from the policy."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the AWS Firewall Manager policy."
  type        = map(string)
  default     = {}
}
