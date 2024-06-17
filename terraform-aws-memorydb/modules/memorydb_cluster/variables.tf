variable "cluster_name" {
  description = "The name of the MemoryDB cluster."
  type        = string
}

variable "node_type" {
  description = "The instance type for the MemoryDB cluster."
  type        = string
}

variable "num_replicas" {
  description = "The number of replicas per shard."
  type        = number
}

variable "num_shards" {
  description = "The number of shards in the cluster."
  type        = number
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the MemoryDB cluster."
  type        = list(string)
}

variable "security_group_ids" {
  description = "The list of security group IDs for the MemoryDB cluster."
  type        = list(string)
}

variable "parameter_group_name" {
  description = "The name of the MemoryDB parameter group."
  type        = string
}

variable "snapshot_window" {
  description = "The daily time range (in UTC) during which MemoryDB will take a daily snapshot."
  type        = string
}

variable "snapshot_retention_limit" {
  description = "The number of days for which MemoryDB retains automatic snapshots before deleting them."
  type        = number
}
