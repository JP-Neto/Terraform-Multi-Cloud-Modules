variable "compartment_id" {
  type        = string
  description = "OCID do compartment"
}

variable "cluster_name" {
  type        = string
  description = "Nome do cluster OKE"
}

variable "kubernetes_version" {
  type        = string
  description = "Versão do Kubernetes"
}

variable "vcn_id" {
  type        = string
  description = "OCID da VCN"
}

variable "endpoint_subnet_id" {
  type        = string
  description = "Subnet onde o endpoint do cluster será criado"
}

variable "service_lb_subnet_ids" {
  type        = list(string)
  description = "Subnets usadas para Load Balancers do cluster"
}

variable "cluster_nsg_ids" {
  type        = list(string)
  description = "Lista de NSGs anexados ao endpoint do cluster"
  default     = []
}

variable "is_public_endpoint" {
  type        = bool
  description = "Define se o endpoint do cluster será público"
  default     = true
}

variable "tags" {
  type    = map(string)
  default = {}
}
