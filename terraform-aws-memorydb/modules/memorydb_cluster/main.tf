resource "aws_memorydb_subnet_group" "this" {
  name       = "${var.cluster_name}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.cluster_name}-subnet-group"
  }
}

resource "aws_memorydb_cluster" "this" {
  cluster_name         = var.cluster_name
  node_type            = var.node_type
  num_replicas_per_shard = var.num_replicas
  num_shards           = var.num_shards
  subnet_group_name    = aws_memorydb_subnet_group.this.name
  security_group_ids   = var.security_group_ids
  parameter_group_name = var.parameter_group_name
  snapshot_window      = var.snapshot_window
  snapshot_retention_limit = var.snapshot_retention_limit

  tags = {
    Name = var.cluster_name
  }
}

resource "aws_memorydb_parameter_group" "this" {
  name   = var.parameter_group_name
  family = "memorydb-redis6"

  parameter {
    name  = "activerehashing"
    value = "yes"
  }
}

output "memorydb_cluster_endpoint" {
  value = aws_memorydb_cluster.this.cluster_endpoint.address
}

output "memorydb_cluster_id" {
  value = aws_memorydb_cluster.this.id
}

output "memorydb_cluster_arn" {
  value = aws_memorydb_cluster.this.arn
}
