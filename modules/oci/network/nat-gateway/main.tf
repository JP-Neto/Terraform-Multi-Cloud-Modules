resource "oci_core_nat_gateway" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.display_name

  block_traffic = var.block_traffic
  public_ip_id  = var.public_ip_id

  freeform_tags = var.tags
}