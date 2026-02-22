output "codedeploy_app_name" {
  value = aws_codedeploy_app.this.name
}

output "deployment_group_arn" {
  value = aws_codedeploy_deployment_group.this.arn
}