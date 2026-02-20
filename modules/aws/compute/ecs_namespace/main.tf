resource "aws_service_discovery_private_dns_namespace" "this" {
  name        = var.namespace_name
  description = var.description
  vpc         = var.vpc_id

  tags = var.tags
}