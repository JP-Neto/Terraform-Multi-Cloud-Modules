output "internet_gateway_id" {
  description = "OCID do Internet Gateway criado."
  value       = oci_core_internet_gateway.this.id
}