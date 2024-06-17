resource "aws_redshift_subnet_group" "this" {
  name       = "${var.cluster_identifier}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.cluster_identifier}-subnet-group"
  }
}

resource "aws_redshift_cluster" "this" {
  cluster_identifier = var.cluster_identifier
  node_type          = var.node_type
  master_username    = var.master_username
  master_password    = var.master_password
  db_name            = var.db_name
  cluster_type       = var.cluster_type
  number_of_nodes    = var.number_of_nodes
  port               = var.port
  subnet_group_name  = aws_redshift_subnet_group.this.name
  vpc_security_group_ids = var.security_group_ids
  iam_roles          = var.iam_roles

  tags = {
    Name = var.cluster_identifier
  }
}

resource "aws_redshift_parameter_group" "this" {
  name   = var.parameter_group_name
  family = "redshift-1.0"

  parameter {
    name  = "require_ssl"
    value = "true"
  }
}

output "redshift_cluster_endpoint" {
  value = aws_redshift_cluster.this.endpoint
}

output "redshift_cluster_id" {
  value = aws_redshift_cluster.this.cluster_identifier
}

output "redshift_cluster_arn" {
  value = aws_redshift_cluster.this.arn
}
