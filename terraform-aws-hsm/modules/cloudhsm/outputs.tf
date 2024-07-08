output "cloudhsm_cluster_id" {
  value = aws_cloudhsm_v2_cluster.this.id
}

output "cloudhsm_hsm_ids" {
  value = aws_cloudhsm_v2_hsm.this.*.id
}
