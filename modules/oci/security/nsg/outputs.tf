output "nsg_id" {
  value       = oci_core_network_security_group.this.id
  description = "O OCID do Network Security Group criado"
}

output "nsg_name" {
  value       = oci_core_network_security_group.this.display_name
  description = "O nome amigável do NSG"
}
