module "iam_user" {
  source = "./modules/user"

  user_name = var.user_name
  user_path = var.user_path
}

module "iam_group" {
  source = "./modules/group"

  group_name = var.group_name
  group_path = var.group_path
  users      = [module.iam_user.user_name]
}

module "iam_role" {
  source = "./modules/role"

  role_name = var.role_name
  role_path = var.role_path
  assume_role_policy = var.assume_role_policy
}
