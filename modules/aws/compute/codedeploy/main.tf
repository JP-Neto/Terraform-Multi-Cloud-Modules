# Aplicação CodeDeploy
resource "aws_codedeploy_app" "this" {
  compute_platform = "ECS" 
  name             = var.app_name
}

resource "aws_codedeploy_deployment_group" "this" {
  app_name               = aws_codedeploy_app.this.name
  deployment_group_name  = var.deployment_group_name
  deployment_config_name = "CodeDeployDefault.ECSAllAtOnce"
  service_role_arn       = var.codedeploy_role_arn

  
  deployment_style {
    deployment_option = "WITHOUT_TRAFFIC_CONTROL" 
    deployment_type   = "IN_PLACE"                
  }

  ecs_service {
    cluster_name = var.cluster_name
    service_name = var.service_name
  }

  
  auto_rollback_configuration {
    enabled = true
    events  = ["DEPLOYMENT_FAILURE"]
  }

  tags = var.tags
}