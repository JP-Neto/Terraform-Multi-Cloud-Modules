output "service_name" {
  description = "O nome do serviço ECS criado"
  value       = aws_ecs_service.this.name
}

output "service_id" {
  description = "O ID/ARN do serviço ECS"
  value       = aws_ecs_service.this.id
}

output "cluster" {
  description = "O nome ou ARN do cluster associado"
  value       = aws_ecs_service.this.cluster
}