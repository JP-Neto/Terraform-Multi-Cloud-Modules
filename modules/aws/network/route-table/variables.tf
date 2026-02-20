variable "vpc_id" {
  description = "O ID da Virtual Private Cloud (VPC) onde os recursos serão implantados."
  type        = string
}

variable "subnet_ids" {
  description = "Lista contendo os IDs das subnets (ex: subnets públicas). Recomenda-se passar os IDs em ordem para garantir a distribuição correta."
  type        = list(string)
}

variable "tags" {
  description = "Um mapa de metadados (tags) para aplicar aos recursos, facilitando a organização, filtragem e gestão de custos."
  type        = map(string)
}

variable "service_name" {
  description = "Mapa contendo as nomenclaturas do serviço. Pode ser usado para definir nomes curtos, slugs ou nomes por contexto."
  type        = map(string)
}

variable "azs" {
  description = "Lista de Zonas de Disponibilidade (Availability Zones) da AWS que serão utilizadas para alta disponibilidade."
  type        = list(string)
}