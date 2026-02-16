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
    network_entity_id = string
    destination       = string
    description       = optional(string)
  }))
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}