variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-west-2"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "cloudfront_origin_access_identity_comment" {
  description = "Comment for the CloudFront origin access identity"
  type        = string
  default     = "CloudFront OAI for S3 access"
}
