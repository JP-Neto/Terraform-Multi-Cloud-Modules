locals {
  all_rules = concat(
    flatten([
      for rule in var.ingress_rules : [
        for cidr in lookup(rule, "cidr_blocks", []) : {
          direction   = "INGRESS"
          description = rule.description
          from_port   = rule.from_port
          to_port     = rule.to_port          
          protocol    = rule.protocol == "tcp" ? "6" : (rule.protocol == "udp" ? "17" : rule.protocol)
          source      = cidr
          source_type = "CIDR_BLOCK"
        }
      ]
    ]),
    flatten([
      for rule in var.egress_rules : [
        for cidr in lookup(rule, "cidr_blocks", []) : {
          direction        = "EGRESS"
          description      = rule.description
          from_port        = rule.from_port
          to_port          = rule.to_port
          protocol         = rule.protocol == "tcp" ? "6" : (rule.protocol == "udp" ? "17" : rule.protocol)
          destination      = cidr
          destination_type = "CIDR_BLOCK"
        }
      ]
    ])
  )
}

resource "oci_core_network_security_group_security_rule" "this" {
  for_each = { 
    for r in local.all_rules : 
    "${r.direction}-${r.protocol}-${r.from_port}-${r.to_port}-${lookup(r, "source", "none")}-${lookup(r, "destination", "none")}" => r 
  }

  network_security_group_id = oci_core_network_security_group.this.id
  direction                 = each.value.direction
  protocol                  = each.value.protocol
  description               = each.value.description

  source           = lookup(each.value, "source", null)
  source_type      = lookup(each.value, "source_type", null)
  destination      = lookup(each.value, "destination", null)
  destination_type = lookup(each.value, "destination_type", null)

  dynamic "tcp_options" {
    for_each = each.value.protocol == "6" ? [1] : []
    content {
      destination_port_range {
        min = each.value.from_port
        max = each.value.to_port
      }
    }
  }

  dynamic "udp_options" {
    for_each = each.value.protocol == "17" ? [1] : []
    content {
      destination_port_range {
        min = each.value.from_port
        max = each.value.to_port
      }
    }
  }
}