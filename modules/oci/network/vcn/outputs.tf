output "vcn_id" {
  description = "OCID da VCN criada para o JPN Labs"
  value       = oci_core_vcn.this.id
}

output "vcn_cidr" {
  description = "Bloco CIDR da VCN"
  value       = oci_core_vcn.this.cidr_block
}

output "default_security_list_id" {
  value = oci_core_vcn.this.default_security_list_id
}