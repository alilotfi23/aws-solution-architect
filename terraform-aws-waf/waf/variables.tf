variable "waf_name" {
  description = "The name of the WAF."
  type        = string
}

variable "waf_scope" {
  description = "Specifies whether this is for CLOUDFRONT or REGIONAL."
  type        = string
}

variable "rules" {
  description = "A list of rules to associate with the WebACL."
  type        = list(object({
    name        = string
    priority    = number
    action      = string
    type        = string
    statement   = any
    visibility_config = object({
      sampled_requests_enabled = bool
      cloudwatch_metrics_enabled = bool
      metric_name = string
    })
  }))
}

variable "default_action" {
  description = "The default action for the WebACL (allow or block)."
  type        = string
}

variable "resource_arn" {
  description = "The ARN of the resource to associate with the WAF."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the AWS WAF resources."
  type        = map(string)
  default     = {}
}
