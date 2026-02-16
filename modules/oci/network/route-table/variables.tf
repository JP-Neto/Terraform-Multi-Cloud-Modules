variable "compartment_id" {
  type = string
}

variable "vcn_id" {
  type = string
}

variable "display_name" {
  type = string
}

variable "route_rules" {
  type = list(object({
    description       = optional(string)
    destination       = optional(string)
    destination_type  = optional(string, "CIDR_BLOCK")
    network_entity_id = string
  }))
}

variable "tags" {
  type    = map(string)
  default = {}
}