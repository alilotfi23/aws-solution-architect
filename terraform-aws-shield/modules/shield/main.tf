resource "aws_shield_protection" "this" {
  name         = var.protection_name
  resource_arn = var.resource_arn

  tags = var.tags
}

output "shield_protection_id" {
  value = aws_shield_protection.this.id
}
