resource "aws_ecs_service" "this" {
  name            = var.service_name
  cluster         = var.cluster_id
  task_definition = var.task_definition_arn
  desired_count   = var.desired_tasks
  launch_type     = var.launch_type

  network_configuration {
    subnets          = var.subnet_ids
    security_groups  = var.security_groups
    assign_public_ip = var.assign_public_ip 
  }
  lifecycle {
    ignore_changes = [task_definition]
  }

  tags = var.tags
}