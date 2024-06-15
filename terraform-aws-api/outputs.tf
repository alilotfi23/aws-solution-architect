output "api_url" {
  description = "The URL of the API Gateway"
  value       = aws_api_gateway_stage.this.invoke_url
}
