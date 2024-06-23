output "aurora_cluster_endpoint" {
  value = module.aurora_cluster.cluster_endpoint
}

output "aurora_reader_endpoint" {
  value = module.aurora_cluster.reader_endpoint
}
