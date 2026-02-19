output "cluster_name" {
  description = "Nome do cluster associado"
  value       = aws_ecs_cluster_capacity_providers.this.cluster_name
}

output "id" {
  description = "ID da associação do Capacity Provider"
  value       = aws_ecs_cluster_capacity_providers.this.id
}