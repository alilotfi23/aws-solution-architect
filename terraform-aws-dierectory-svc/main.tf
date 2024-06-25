provider "aws" {
  region = var.region
}

module "directory_service" {
  source                   = "./modules/directory_service"
  directory_name           = var.directory_name
  password                 = var.password
  size                     = var.size
  vpc_settings             = var.vpc_settings
  edition                  = var.edition
  connect_settings         = var.connect_settings
  tags                     = var.tags
}

output "directory_id" {
  value = module.directory_service.directory_id
}

output "directory_dns_ip_addresses" {
  value = module.directory_service.directory_dns_ip_addresses
}
