variable "compartment_id" {
  type = string
}

variable "vcn_id" {
  type = string
}

variable "display_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}