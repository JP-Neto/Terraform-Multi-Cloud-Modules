resource "aws_appautoscaling_policy" "ecs_policy_cpu" {
  name               = var.policy_name
  policy_type        = "TargetTrackingScaling"
  resource_id        = var.ecs_id
  scalable_dimension = var.ecs_dimension
  service_namespace  = var.ecs_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageCPUUtilization"
    }

    target_value       = var.cpu_target_value
    scale_in_cooldown  = var.scale_in_cooldown
    scale_out_cooldown = var.scale_out_cooldown
  }
}