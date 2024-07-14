resource "aws_fms_policy" "this" {
  name     = var.policy_name
  security_service_policy_data {
    type                = var.security_service.type
    managed_service_data = var.security_service.managed_service_data
  }

  resource_type = var.resource_type

  dynamic "exclude_resource" {
    for_each = var.exclude_resource
    content {
      resource_arn = exclude_resource.value
    }
  }

  dynamic "exclude_resource_type" {
    for_each = var.exclude_resource_type
    content {
      resource_type = exclude_resource_type.value
    }
  }

  tags = var.tags
}

output "policy_arn" {
  value = aws_fms_policy.this.arn
}
