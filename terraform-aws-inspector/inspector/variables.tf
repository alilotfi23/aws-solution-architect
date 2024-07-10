variable "target_name" {
  description = "The name of the assessment target."
  type        = string
}

variable "target_resource_group_arn" {
  description = "The ARN of the resource group to associate with the assessment target."
  type        = string
}

variable "template_name" {
  description = "The name of the assessment template."
  type        = string
}

variable "duration_seconds" {
  description = "The duration of the assessment run in seconds."
  type        = number
  default     = 3600
}

variable "rules_package_arns" {
  description = "The ARNs of the rules packages to use in the assessment template."
  type        = list(string)
}

variable "user_attributes_for_findings" {
  description = "The user-defined attributes to be assigned to every finding."
  type        = list(object({
    key   = string
    value = string
  }))
  default = []
}

variable "tags" {
  description = "A map of tags to assign to the AWS Inspector resources."
  type        = map(string)
  default     = {}
}
