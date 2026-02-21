variable "family" {
  description = "Nome da familia da task definition"
  type        = string
}

variable "network_mode" {
  description = "Modo de rede da task (Ex: awsvpc, bridge)"
  type        = string
  default     = "awsvpc"
}

variable "requires_compatibilities" {
  description = "Compatibilidade de lançamento (Ex: ['FARGATE'])"
  type        = list(string)
  default     = ["FARGATE"]
}

variable "cpu" {
  description = "Quantidade de CPU (unidades)"
  type        = string
}

variable "memory" {
  description = "Quantidade de Memoria (MiB)"
  type        = string
}

variable "execution_role_arn" {
  description = "ARN da role de execução (ECS Agent/Docker)"
  type        = string
}

variable "task_role_arn" {
  description = "ARN da role da aplicação (opcional)"
  type        = string
  default     = null
}

variable "container_definitions" {
  description = "Lista com a definição dos containers (será convertida em JSON)"
  type        = any 
}

variable "tags" {
  description = "Mapa de tags para o recurso"
  type        = map(string)
  default     = {}
}