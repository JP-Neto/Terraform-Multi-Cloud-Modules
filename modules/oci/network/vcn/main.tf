resource "oci_core_vcn" "this" {
  compartment_id = var.compartment_id
  cidr_block     = var.vcn_cidr
  display_name   = var.vcn_name
  dns_label      = var.dns_label

  freeform_tags = merge(var.tags, {
    "Name" = var.vcn_name
  })
}