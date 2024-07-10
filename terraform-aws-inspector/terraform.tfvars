region                   = "us-east-1"
target_name              = "my-inspector-target"
target_resource_group_arn = "arn:aws:inspector:us-east-1:123456789012:resourcegroup/0-XXXXXXXX"
template_name            = "my-inspector-template"
duration_seconds         = 3600
rules_package_arns       = [
  "arn:aws:inspector:us-east-1:123456789012:rulespackage/0-ABcdefgh",
  "arn:aws:inspector:us-east-1:123456789012:rulespackage/0-IJKlmnop"
]
user_attributes_for_findings = [
  {
    key   = "Environment"
    value = "Production"
  },
  {
    key   = "Application"
    value = "WebApp"
  }
]
tags = {
  Environment = "production"
  Project     = "my-inspector-project"
}
