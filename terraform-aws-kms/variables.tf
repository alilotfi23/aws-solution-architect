variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "key_alias" {
  description = "The alias for the KMS key."
  type        = string
}

variable "description" {
  description = "The description of the KMS key."
  type        = string
  default     = ""
}

variable "deletion_window_in_days" {
  description = "The waiting period, specified in number of days, before the KMS key is deleted."
  type        = number
  default     = 30
}

variable "enable_key_rotation" {
  description = "Specifies whether key rotation is enabled."
  type        = bool
  default     = false
}

variable "policy" {
  description = "The key policy JSON document."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to assign to the KMS key."
  type        = map(string)
  default     = {}
}
