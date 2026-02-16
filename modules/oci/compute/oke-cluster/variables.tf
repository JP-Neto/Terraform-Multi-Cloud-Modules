variable "compartment_id" {
  type        = string
  description = "OCID do compartimento onde o cluster será criado."
}

variable "vcn_id" {
  type        = string
  description = "OCID da VCN onde o cluster será alocado."
}

variable "kubernetes_version" {
  type        = string
  description = "Versão do Kubernetes (ex: v1.31.1)."
}

variable "cluster_name" {
  type        = string
  description = "Nome de exibição do cluster OKE."
}

variable "public_subnet_id" {
  type        = string
  description = "OCID da subnet pública para o endpoint da API."
}

variable "nsg_ids" {
  type        = list(string)
  default     = []
  description = "Lista de OCIDs dos Network Security Groups para o endpoint do cluster."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags para organização dos recursos."
}