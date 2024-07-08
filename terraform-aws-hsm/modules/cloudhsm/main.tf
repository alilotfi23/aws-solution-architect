resource "aws_cloudhsm_v2_cluster" "this" {
  hsm_type        = var.hsm_type
  subnet_ids      = var.subnet_ids
  cluster_name    = var.cluster_name

  tags = var.tags
}

resource "aws_cloudhsm_v2_hsm" "this" {
  count             = 1
  cluster_id        = aws_cloudhsm_v2_cluster.this.id
  subnet_id         = var.hsm_eni_subnet_id
  availability_zone = var.availability_zone
  hsm_type          = var.hsm_type

  tags = var.tags
}

output "cloudhsm_cluster_id" {
  value = aws_cloudhsm_v2_cluster.this.id
}

output "cloudhsm_hsm_ids" {
  value = [for hsm in aws_cloudhsm_v2_hsm.this : hsm.id]
}
