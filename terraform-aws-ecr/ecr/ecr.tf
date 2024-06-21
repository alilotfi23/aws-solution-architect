module "ecr_repository" {
  source        = "../modules/ecr_repository"
  repository_name = var.repository_name
}
