data "oci_core_services" "this" {
  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}
resource "oci_core_route_table" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.display_name

  dynamic "route_rules" {
    for_each = var.route_rules
    content {
      network_entity_id = route_rules.value.network_entity_id
      description       = lookup(route_rules.value, "description", null)      
      destination_type  = lookup(route_rules.value, "destination_type", "CIDR_BLOCK")
      destination       = lookup(route_rules.value, "destination_type", "CIDR_BLOCK") == "SERVICE_CIDR_BLOCK" ? data.oci_core_services.this.services[0].cidr_block : route_rules.value.destination
    }
  }

  freeform_tags = var.tags
}