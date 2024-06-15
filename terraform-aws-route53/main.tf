// Define AWS provider
provider "aws" {
  region = "us-east-1"  // Replace with your desired AWS region
  // Add access and secret key here if not using IAM roles
}

// Create a Route 53 hosted zone
resource "aws_route53_zone" "example_com" {
  name = "example.com"
}

// Define DNS records
resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.example_com.zone_id
  name    = "www.example.com"
  type    = "A"
  ttl     = 300
  records = ["192.0.2.1"]
}

// Optionally, create a health check
resource "aws_route53_health_check" "example_check" {
  fqdn            = aws_route53_record.www.fqdn
  port            = 80
  type            = "HTTP"
  resource_path   = "/"
  failure_threshold = 3
  request_interval = 30
}

// Associate health check with a record
resource "aws_route53_health_check_association" "example_association" {
  health_check_id = aws_route53_health_check.example_check.id
  resource_id     = aws_route53_record.www.id
}
