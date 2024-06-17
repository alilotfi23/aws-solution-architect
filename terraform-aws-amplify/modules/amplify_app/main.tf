resource "aws_amplify_app" "this" {
  name = var.app_name

  environment_variables = {
    ENV = var.environment
  }

  oauth_token = var.oauth_token

  custom_rules = [
    {
      source    = "/<*>"
      target    = "/index.html"
      status    = "200"
    }
  ]
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.this.id
  branch_name = "main"
}

output "amplify_app_id" {
  value = aws_amplify_app.this.id
}

output "amplify_app_arn" {
  value = aws_amplify_app.this.arn
}
