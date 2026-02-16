variable "compartment_id" {
  type = string
}

variable "vcn_id" {
  type = string
}

variable "display_name" {
  type = string
}

variable "block_traffic" {
  type    = bool
  default = false
}

variable "public_ip_id" {
  type        = string
  default     = null
  description = "OCID de um IP público reservado, se houver."
}

variable "tags" {
  type    = map(string)
  default = {}
}