variable "cluster_name" {
  description = "Nome do cluster ECS"
  type        = string
}

variable "namespace_arn" {
  description = "ARN do Cloud Map Namespace para Service Connect"
  type        = string
}

variable "enable_container_insights" {
  description = "Habilitar CloudWatch Container Insights"
  type        = bool  
}

variable "tags" {
  description = "Tags para o Cluster"
  type        = map(string)
  default     = {}
}