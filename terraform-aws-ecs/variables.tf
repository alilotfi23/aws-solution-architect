variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
}

variable "task_definition_name" {
  description = "The name of the ECS task definition."
  type        = string
}

variable "container_name" {
  description = "The name of the container."
  type        = string
}

variable "container_image" {
  description = "The image of the container."
  type        = string
}

variable "container_port" {
  description = "The port on which the container is listening."
  type        = number
}

variable "desired_count" {
  description = "The desired number of tasks."
  type        = number
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the ECS service."
  type        = list(string)
}

variable "security_group_ids" {
  description = "A list of security group IDs for the ECS service."
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the AWS ECS resources."
  type        = map(string)
  default     = {}
}
