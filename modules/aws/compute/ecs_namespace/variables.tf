variable "namespace_name" {
  description = "Nome do DNS interno (ex: jpn.local ou dev.internal)"
  type        = string
}

variable "description" {
  description = "Descrição do namespace"
  type        = string
  default     = "Service Discovery para microserviços ECS"
}

variable "vpc_id" {
  description = "ID da VPC onde o namespace será criado"
  type        = string
}

variable "tags" {
  description = "Tags para o recurso"
  type        = map(string)
  default     = {}
}