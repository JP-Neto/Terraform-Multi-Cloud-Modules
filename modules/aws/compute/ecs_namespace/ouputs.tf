output "namespace_id" {
  description = "ID do Service Discovery Namespace"
  value       = aws_service_discovery_private_dns_namespace.this.id
}

output "namespace_arn" {
  description = "ARN do Service Discovery Namespace"
  value       = aws_service_discovery_private_dns_namespace.this.arn
}

output "namespace_hosted_zone" {
  description = "ID da Hosted Zone do Route53 criada automaticamente"
  value       = aws_service_discovery_private_dns_namespace.this.hosted_zone
}