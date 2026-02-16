variable "compartment_id" {
  type        = string
  description = "OCID do compartimento onde o NSG será criado"
}

variable "vcn_id" {
  type        = string
  description = "OCID da VCN (Virtual Cloud Network)"
}

variable "name" {
  type        = string
  description = "Nome de exibição do Network Security Group"
}

variable "namespace" {
  type        = string
  description = "Namespace de organização das tags"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags de formato livre (Freeform Tags) para o recurso"
}