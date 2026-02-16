output "subnet_id" {
  description = "OCID da subnet criada."
  value       = oci_core_subnet.this.id
}

output "subnet_cidr" {
  description = "Bloco CIDR da subnet."
  value       = oci_core_subnet.this.cidr_block
}