provider "aws" {
  region = var.region
}

module "cloudhsm" {
  source           = "./modules/cloudhsm"
  cluster_name     = var.cluster_name
  subnet_ids       = var.subnet_ids
  hsm_eni_subnet_id = var.hsm_eni_subnet_id
  availability_zone = var.availability_zone
  hsm_type         = var.hsm_type
  tags             = var.tags
}

output "cloudhsm_cluster_id" {
  value = module.cloudhsm.cloudhsm_cluster_id
}

output "cloudhsm_hsm_ids" {
  value = module.cloudhsm.cloudhsm_hsm_ids
}
