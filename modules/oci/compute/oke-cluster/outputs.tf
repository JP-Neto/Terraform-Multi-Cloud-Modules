output "cluster_id" {
  value       = oci_containerengine_cluster.this.id
  description = "ID do cluster para ser usado no módulo de Node Pool."
}

output "cluster_endpoints" {
  value       = oci_containerengine_cluster.this.endpoints
  description = "Endpoints para conexão com a API do Kubernetes."
}