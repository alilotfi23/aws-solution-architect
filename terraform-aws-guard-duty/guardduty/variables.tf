variable "enable" {
  description = "Boolean flag to enable or disable GuardDuty."
  type        = bool
  default     = true
}

variable "member_accounts" {
  description = "List of member account IDs to invite to GuardDuty."
  type        = list(string)
  default     = []
}

variable "invite" {
  description = "Boolean flag to invite member accounts."
  type        = bool
  default     = false
}

variable "detector_tags" {
  description = "A map of tags to assign to the GuardDuty detector."
  type        = map(string)
  default     = {}
}

variable "member_tags" {
  description = "A map of tags to assign to the GuardDuty member accounts."
  type        = map(string)
  default     = {}
}
