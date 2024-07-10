resource "aws_inspector_assessment_target" "this" {
  name                   = var.target_name
  resource_group_arn     = var.target_resource_group_arn

  tags = var.tags
}

resource "aws_inspector_assessment_template" "this" {
  name                   = var.template_name
  duration_seconds       = var.duration_seconds
  target_arn             = aws_inspector_assessment_target.this.arn
  rules_package_arns     = var.rules_package_arns

  dynamic "user_attributes_for_findings" {
    for_each = var.user_attributes_for_findings
    content {
      key   = user_attributes_for_findings.key
      value = user_attributes_for_findings.value
    }
  }

  tags = var.tags
}

output "inspector_assessment_target_arn" {
  value = aws_inspector_assessment_target.this.arn
}

output "inspector_assessment_template_arn" {
  value = aws_inspector_assessment_template.this.arn
}
