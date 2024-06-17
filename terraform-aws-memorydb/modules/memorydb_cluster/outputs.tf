output "memorydb_cluster_endpoint" {
  value = aws_memorydb_cluster.this.cluster_endpoint.address
}

output "memorydb_cluster_id" {
  value = aws_memorydb_cluster.this.id
}

output "memorydb_cluster_arn" {
  value = aws_memorydb_cluster.this.arn
}
