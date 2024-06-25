output "directory_id" {
  value = aws_directory_service_directory.this.id
}

output "directory_dns_ip_addresses" {
  value = aws_directory_service_directory.this.dns_ip_addresses
}
