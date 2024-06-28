region          = "us-east-1"
waf_name        = "my-waf"
waf_scope       = "REGIONAL" # Use "CLOUDFRONT" for CloudFront
default_action  = "ALLOW" # or "BLOCK"
resource_arn    = "arn:aws:apigateway:us-east-1::/restapis/a123456789/stages/prod"
tags = {
  Environment = "production"
  Project     = "my-waf-project"
}

rules = [
  {
    name        = "IPBlockRule"
    priority    = 1
    action      = "BLOCK"
    type        = "IPSetReferenceStatement"
    statement = {
      ip_set_reference_statement = {
        arn = "arn:aws:wafv2:us-east-1:123456789012:regional/ipset/my-ip-set"
      }
    }
    visibility_config = {
      sampled_requests_enabled   = true
      cloudwatch_metrics_enabled = true
      metric_name                = "IPBlockRule"
    }
  },
  {
    name        = "SQLInjectionRule"
    priority    = 2
    action      = "BLOCK"
    type        = "ManagedRuleGroupStatement"
    statement = {
      managed_rule_group_statement = {
        vendor_name = "AWS"
        name        = "AWSManagedRulesSQLiRuleSet"
      }
    }
    visibility_config = {
      sampled_requests_enabled   = true
      cloudwatch_metrics_enabled = true
      metric_name                = "SQLInjectionRule"
    }
  }
]
