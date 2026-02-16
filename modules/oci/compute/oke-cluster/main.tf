resource "oci_containerengine_cluster" "this" {
  compartment_id     = var.compartment_id
  vcn_id             = var.vcn_id
  kubernetes_version = var.kubernetes_version
  name               = var.cluster_name

  options {
    service_lb_subnet_ids = [var.public_subnet_id]
    add_on_options {
      is_kubernetes_dashboard_enabled = false
      is_tiller_enabled               = false
    }
  }

  endpoint_config {
    is_public_ip_enabled = true
    subnet_id            = var.public_subnet_id
    cluster_nsg_ids      = var.cluster_nsg_ids
  }

  freeform_tags = var.tags
}

output "cluster_id" {
  value = oci_containerengine_cluster.this.id
}