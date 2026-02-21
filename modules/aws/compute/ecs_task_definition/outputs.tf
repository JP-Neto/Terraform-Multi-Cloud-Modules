output "arn" {
  description = "Full ARN of the Task Definition"
  value       = aws_ecs_task_definition.this.arn
}

output "family" {
  description = "The family of the Task Definition"
  value       = aws_ecs_task_definition.this.family
}

output "revision" {
  description = "The revision of the Task Definition"
  value       = aws_ecs_task_definition.this.revision
}

output "arn_without_revision" {
  description = "ARN sem o número da revisão (útil para algumas automações)"
  value       = replace(aws_ecs_task_definition.this.arn, "/:\\d+$/", "")
}