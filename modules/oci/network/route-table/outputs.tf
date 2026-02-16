output "route_table_id" {
  description = "ID da tabela de rotas para ser injetado no módulo de subnet."
  value       = oci_core_route_table.this.id
}