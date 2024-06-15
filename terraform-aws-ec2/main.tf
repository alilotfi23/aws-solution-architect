module "vpc" {
  source  = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "subnet" {
  source    = "./modules/subnet"
  vpc_id    = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
}

module "security_group" {
  source    = "./modules/security_group"
  vpc_id    = module.vpc.vpc_id
}

module "ec2_instance" {
  source         = "./modules/ec2_instance"
  subnet_id      = module.subnet.subnet_id
  security_group_id = module.security_group.security_group_id
  instance_type  = var.instance_type
  ami_id         = var.ami_id
}
