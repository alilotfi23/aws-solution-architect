output "waf_arn" {
  value = aws_wafv2_web_acl.this.arn
}

output "waf_id" {
  value = aws_wafv2_web_acl.this.id
}
