output "redshift_cluster_endpoint" {
  value = aws_redshift_cluster.this.endpoint
}

output "redshift_cluster_id" {
  value = aws_redshift_cluster.this.cluster_identifier
}

output "redshift_cluster_arn" {
  value = aws_redshift_cluster.this.arn
}
