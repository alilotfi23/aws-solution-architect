variable "gateway_name" {
  description = "The name of the storage gateway."
  type        = string
}

variable "gateway_timezone" {
  description = "The timezone of the storage gateway."
  type        = string
}

variable "gateway_type" {
  description = "The type of storage gateway (FILE_S3, VTL, STORED, CACHED)."
  type        = string
}

variable "activation_key" {
  description = "The activation key for the storage gateway."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the AWS Storage Gateway resources."
  type        = map(string)
  default     = {}
}

variable "cloudwatch_log_group_arn" {
  description = "The ARN of the CloudWatch log group for the storage gateway."
  type        = string
}

variable "s3_bucket_arn" {
  description = "The ARN of the S3 bucket for the storage gateway."
  type        = string
}

variable "medium_changer_type" {
  description = "The medium changer type for tape gateway."
  type        = string
  default     = "AWS-Gateway-VTL"
}

variable "tape_drive_type" {
  description = "The tape drive type for tape gateway."
  type        = string
  default     = "IBM-ULT3580-TD5"
}

variable "cache_disk_id" {
  description = "The ID of the cache disk for cached volume gateway."
  type        = string
}

variable "disk_ids" {
  description = "A list of disk IDs for the gateway."
  type        = list(string)
}
