module "vpc" {
  source = "./vpc"

  vpc_cidr = var.vpc_cidr
}

module "subnets" {
  source = "./subnets"

  vpc_id     = module.vpc.vpc_id
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}
