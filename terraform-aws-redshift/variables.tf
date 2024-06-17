variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "cluster_identifier" {
  description = "The identifier for the Redshift cluster."
  type        = string
}

variable "node_type" {
  description = "The node type to be provisioned for the cluster."
  type        = string
}

variable "number_of_nodes" {
  description = "The number of nodes in the cluster."
  type        = number
  default     = 1
}

variable "master_username" {
  description = "The username for the master user."
  type        = string
}

variable "master_password" {
  description = "The password for the master user."
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "The name of the first database to be created when the cluster is created."
  type        = string
}

variable "cluster_type" {
  description = "The type of the cluster (single-node or multi-node)."
  type        = string
  default     = "single-node"
}

variable "port" {
  description = "The port number on which the cluster accepts connections."
  type        = number
  default     = 5439
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the Redshift cluster."
  type        = list(string)
}

variable "security_group_ids" {
  description = "The list of security group IDs for the Redshift cluster."
  type        = list(string)
}

variable "parameter_group_name" {
  description = "The name of the Redshift parameter group."
  type        = string
}

variable "iam_roles" {
  description = "A list of IAM role ARNs to associate with the cluster."
  type        = list(string)
}
