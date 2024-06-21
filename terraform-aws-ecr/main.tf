provider "aws" {
  region = var.region
}

module "ecr_repository" {
  source        = "./modules/ecr_repository"
  repository_name = var.repository_name
}

output "ecr_repository_url" {
  value = module.ecr_repository.ecr_repository_url
}
