resource "aws_kms_key" "this" {
  description             = var.description
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = var.enable_key_rotation
  policy                  = var.policy
  tags                    = var.tags
}

resource "aws_kms_alias" "this" {
  name          = "alias/${var.key_alias}"
  target_key_id = aws_kms_key.this.id
}

output "key_id" {
  value = aws_kms_key.this.id
}

output "key_arn" {
  value = aws_kms_key.this.arn
}

output "key_alias" {
  value = aws_kms_alias.this.name
}
