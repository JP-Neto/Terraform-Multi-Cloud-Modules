variable "compartment_id" {
  type        = string
  description = "OCID do compartimento da JPN Labs"
}

variable "vcn_name" {
  type        = string
  description = "Nome da rede virtual"
}

variable "vcn_cidr" {
  type    = string  
}

variable "dns_label" {
  type    = string  
}

variable "tags" {
  type    = map(string)
  default = {}
}