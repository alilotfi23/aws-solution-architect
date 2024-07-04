variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster."
  type        = list(string)
}

variable "node_group_name" {
  description = "The name of the node group."
  type        = string
}

variable "node_instance_type" {
  description = "The instance type for the nodes."
  type        = string
}

variable "desired_capacity" {
  description = "The desired capacity of the node group."
  type        = number
}

variable "min_size" {
  description = "The minimum size of the node group."
  type        = number
}

variable "max_size" {
  description = "The maximum size of the node group."
  type        = number
}

variable "key_name" {
  description = "The key name for SSH access to the nodes."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the AWS EKS resources."
  type        = map(string)
  default     = {}
}
