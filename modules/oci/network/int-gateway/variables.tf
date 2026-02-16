variable "compartment_id" {
  type        = string
  description = "OCID do compartimento."
}

variable "vcn_id" {
  type        = string
  description = "OCID da VCN onde o IGW será criado."
}

variable "display_name" {
  type        = string
  description = "Nome amigável do Internet Gateway."
}

variable "is_enabled" {
  type        = bool
  default     = true
  description = "Define se o gateway está ativo."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags para organização do recurso."
}