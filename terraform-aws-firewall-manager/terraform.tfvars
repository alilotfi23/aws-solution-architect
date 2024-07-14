region = "us-east-1"

policy_name = "my-firewall-manager-policy"

security_service = {
  type = "WAF"
  managed_service_data = <<EOF
{
  "type": "WAF",
  "preProcessRuleGroups": [],
  "managedServiceData": {
    "type": "WAF",
    "rules": [
      {
        "name": "AWSManagedRulesCommonRuleSet",
        "priority": 1,
        "overrideAction": {
          "none": {}
        },
        "visibilityConfig": {
          "sampledRequestsEnabled": true,
          "cloudWatchMetricsEnabled": true,
          "metricName": "AWSManagedRulesCommonRuleSet"
        }
      }
    ]
  }
}
EOF
}

resource_type = "AWS::ElasticLoadBalancingV2::LoadBalancer"

exclude_resource = [
  "arn:aws:elasticloadbalancing:us-east-1:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"
]

exclude_resource_type = [
  "AWS::ElasticLoadBalancingV2::LoadBalancer"
]

tags = {
  Environment = "production"
  Project     = "my-firewall-manager-project"
}
