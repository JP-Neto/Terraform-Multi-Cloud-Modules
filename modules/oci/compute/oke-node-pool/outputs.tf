output "node_pool_id" {
  value       = oci_containerengine_node_pool.this.id
  description = "ID do Node Pool criado."
}

output "node_ids" {
  value       = oci_containerengine_node_pool.this.nodes.*.id
  description = "Lista de IDs dos nós pertencentes ao pool."
}