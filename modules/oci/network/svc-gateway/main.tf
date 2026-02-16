# Busca os serviços disponíveis na região (Vinhedo)
data "oci_core_services" "this" {
  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}

resource "oci_core_service_gateway" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.display_name

  services {
    service_id = data.oci_core_services.this.services[0].id
  }

  freeform_tags = var.tags
}