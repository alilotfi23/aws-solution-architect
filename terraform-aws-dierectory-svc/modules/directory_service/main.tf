resource "aws_directory_service_directory" "this" {
  name              = var.directory_name
  password          = var.password
  size              = var.size
  edition           = var.edition
  vpc_settings {
    vpc_id     = var.vpc_settings.vpc_id
    subnet_ids = var.vpc_settings.subnet_ids
  }

  tags = var.tags
}

resource "aws_directory_service_conditional_forwarder" "this" {
  count             = var.connect_settings == null ? 0 : 1
  directory_id      = aws_directory_service_directory.this.id
  dns_ips           = var.connect_settings.customer_dns_ips
  remote_domain_name = var.connect_settings.customer_username
}

output "directory_id" {
  value = aws_directory_service_directory.this.id
}

output "directory_dns_ip_addresses" {
  value = aws_directory_service_directory.this.dns_ip_addresses
}
