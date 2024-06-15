// Define AWS provider
provider "aws" {
  region = "eu-west-1"  // Replace with your desired AWS region
  // Add access and secret key here if not using IAM roles
}

// Create an AWS Global Accelerator
resource "aws_globalaccelerator_accelerator" "example_accelerator" {
  name = "example-accelerator"
  ip_address_type = "IPV4"
}

// Define listeners for the accelerator
resource "aws_globalaccelerator_listener" "example_listener" {
  accelerator_arn = aws_globalaccelerator_accelerator.example_accelerator.arn
  protocol        = "TCP"
  port_ranges {
    from_port = 80
    to_port   = 80
  }
}

// Define endpoint groups
resource "aws_globalaccelerator_endpoint_group" "example_endpoint_group" {
  listener_arn      = aws_globalaccelerator_listener.example_listener.arn
  endpoint_group_region = "eu-west-1"  // Replace with your desired region
  endpoint_configuration {
    endpoint_id = "i-1234567890abcdef0"  // Replace with your EC2 instance ID or ENI ID
    weight      = 100
  }
}

// Optionally, create a health check
resource "aws_globalaccelerator_endpoint_group_health_check" "example_health_check" {
  endpoint_group_arn = aws_globalaccelerator_endpoint_group.example_endpoint_group.arn
  threshold_count    = 3
  interval_seconds   = 30
  port               = 80
  protocol           = "TCP"
}
