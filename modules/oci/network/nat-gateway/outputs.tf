output "nat_gateway_id" {
  description = "OCID do NAT Gateway."
  value       = oci_core_nat_gateway.this.id
}