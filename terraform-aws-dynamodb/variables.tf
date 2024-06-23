variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "table_name" {
  description = "The name of the DynamoDB table."
  type        = string
}

variable "hash_key" {
  description = "The hash key (partition key) for the DynamoDB table."
  type        = string
}

variable "range_key" {
  description = "The range key (sort key) for the DynamoDB table (optional)."
  type        = string
  default     = null
}

variable "attribute_definitions" {
  description = "The attribute definitions for the DynamoDB table."
  type        = list(object({
    name = string
    type = string
  }))
}

variable "read_capacity" {
  description = "The read capacity units for the DynamoDB table."
  type        = number
}

variable "write_capacity" {
  description = "The write capacity units for the DynamoDB table."
  type        = number
}

variable "global_secondary_indexes" {
  description = "The global secondary indexes for the DynamoDB table (optional)."
  type        = list(object({
    name               = string
    hash_key           = string
    range_key          = string
    read_capacity      = number
    write_capacity     = number
    projection_type    = string
    non_key_attributes = list(string)
  }))
  default = []
}

variable "ttl" {
  description = "The TTL settings for the DynamoDB table (optional)."
  type        = object({
    attribute_name = string
    enabled        = bool
  })
  default = {
    attribute_name = ""
    enabled        = false
  }
}

variable "tags" {
  description = "The tags to assign to the DynamoDB table."
  type        = map(string)
  default     = {}
}
