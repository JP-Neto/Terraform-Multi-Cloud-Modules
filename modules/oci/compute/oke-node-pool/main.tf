resource "oci_containerengine_node_pool" "this" {
  cluster_id         = var.cluster_id
  compartment_id     = var.compartment_id
  kubernetes_version = var.kubernetes_version
  name               = var.node_pool_name
  node_shape         = var.node_shape

  node_shape_config {
    memory_in_gbs = var.node_memory_gb
    ocpus         = var.node_ocpus
  }

  node_source_details {
    image_id    = var.node_image_id
    source_type = "IMAGE"
  }

  node_config_details {
    placement_configs {
      availability_domain = var.availability_domain
      subnet_id           = var.private_subnet_id
    }
    size = var.node_pool_size
    nsg_ids  = var.nsg_ids
  }

  freeform_tags = var.tags
}