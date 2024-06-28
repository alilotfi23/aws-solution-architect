resource "aws_wafv2_web_acl" "this" {
  name  = var.waf_name
  scope = var.waf_scope

  default_action {
    type = var.default_action
  }

  dynamic "rule" {
    for_each = var.rules
    content {
      name     = rule.value.name
      priority = rule.value.priority
      action {
        type = rule.value.action
      }
      statement = rule.value.statement
      visibility_config {
        sampled_requests_enabled   = rule.value.visibility_config.sampled_requests_enabled
        cloudwatch_metrics_enabled = rule.value.visibility_config.cloudwatch_metrics_enabled
        metric_name                = rule.value.visibility_config.metric_name
      }
    }
  }

  visibility_config {
    sampled_requests_enabled   = true
    cloudwatch_metrics_enabled = true
    metric_name                = var.waf_name
  }

  tags = var.tags
}

resource "aws_wafv2_web_acl_association" "this" {
  resource_arn = var.resource_arn
  web_acl_arn  = aws_wafv2_web_acl.this.arn
}

output "waf_arn" {
  value = aws_wafv2_web_acl.this.arn
}

output "waf_id" {
  value = aws_wafv2_web_acl.this.id
}
