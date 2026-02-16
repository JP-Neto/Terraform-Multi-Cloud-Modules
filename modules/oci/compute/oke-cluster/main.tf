resource "oci_containerengine_cluster" "this" {
  compartment_id     = var.compartment_id
  name               = var.cluster_name
  kubernetes_version = var.kubernetes_version
  vcn_id             = var.vcn_id

  endpoint_config {
    is_public_ip_enabled = var.is_public_endpoint
    subnet_id            = var.endpoint_subnet_id
    nsg_ids              = var.cluster_nsg_ids
  }

  options {
    service_lb_subnet_ids = var.service_lb_subnet_ids
  }

  freeform_tags = var.tags
}
