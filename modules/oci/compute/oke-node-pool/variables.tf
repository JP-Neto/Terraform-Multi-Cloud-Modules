variable "cluster_id" {
  type        = string
  description = "OCID do cluster OKE ao qual este node pool pertence."
}

variable "compartment_id" {
  type        = string
  description = "OCID do compartimento."
}

variable "kubernetes_version" {
  type        = string
  description = "Versão do Kubernetes (deve ser compatível com a do cluster)."
}

variable "node_pool_name" {
  type        = string
  description = "Nome do pool de nós."
}

variable "node_shape" {
  type        = string
  description = "Shape da instância (ex: VM.Standard.A1.Flex)."
}

variable "node_memory_gb" {
  type        = number
  description = "Quantidade de memória em GB (para shapes Flex)."
}

variable "node_ocpus" {
  type        = number
  description = "Quantidade de OCPUs (para shapes Flex)."
}

variable "node_image_id" {
  type        = string
  description = "OCID da imagem do worker node (específica para OKE)."
}

variable "availability_domain" {
  type        = string
  description = "AD onde os nós serão criados."
}

variable "private_subnet_id" {
  type        = string
  description = "OCID da subnet privada onde os workers ficarão isolados."
}

variable "node_pool_size" {
  type        = number
  default     = 1
  description = "Quantidade de nós no pool."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags para organização dos recursos."
}