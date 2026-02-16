variable "compartment_id" {
  type        = string
  description = "OCID do compartimento da JPN Labs."
}

variable "vcn_id" {
  type        = string
  description = "OCID da VCN pai."
}

variable "display_name" {
  type        = string
  description = "Nome amigável da Subnet."
}

variable "cidr_block" {
  type        = string
  description = "Bloco IPv4 da subnet (ex: 10.0.1.0/24)."
}

variable "dns_label" {
  type        = string
  default     = null
  description = "Label para registros DNS internos."
}

variable "route_table_id" {
  type        = string
  description = "ID da Route Table (IGW para pública ou NAT para privada)."
}

variable "security_list_ids" {
  type        = list(string)
  default     = []
  description = "Lista de Security Lists aplicadas à subnet."
}

variable "is_private" {
  type        = bool
  default     = true
  description = "Se true, proíbe IPs públicos (Subnet Privada)."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags de organização JPN Cloud Solutions."
}