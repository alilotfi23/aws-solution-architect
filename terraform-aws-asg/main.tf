# terraform/main.tf
provider "aws" {
  region = var.region
}

module "asg" {
  source           = "./modules/asg"
  vpc_id           = var.vpc_id
  subnet_ids       = var.subnet_ids
  instance_type    = var.instance_type
  desired_capacity = var.desired_capacity
  min_size         = var.min_size
  max_size         = var.max_size
  ami_id           = var.ami_id
  key_name         = var.key_name
}
