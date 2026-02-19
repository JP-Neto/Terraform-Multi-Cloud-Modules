variable "cluster_name" {
  description = "Nome do cluster para associar a capacidade"
  type        = string
}

variable "capacity_providers" {
  description = "Lista de provedores (ex: ['FARGATE', 'FARGATE_SPOT'])"
  type        = list(string)  
}