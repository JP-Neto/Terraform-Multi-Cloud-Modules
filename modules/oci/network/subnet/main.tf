resource "oci_core_subnet" "this" {
    compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.display_name  
  cidr_block     = var.cidr_block
  dns_label      = var.dns_label
  route_table_id    = var.route_table_id
  security_list_ids = var.security_list_ids
  # Define se a subnet é privada (proibe IPs públicos nos recursos)
  prohibit_public_ip_on_vnic = var.is_private

  freeform_tags = var.tags
}