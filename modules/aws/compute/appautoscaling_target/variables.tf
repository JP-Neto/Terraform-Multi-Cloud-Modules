variable "ecs_max_capacity" {
  description = "Capacidade máxima de instâncias para o Auto Scaling"
  type        = number
}

variable "ecs_min_capacity" {
  description = "Capacidade mínima de instâncias para o Auto Scaling"
  type        = number
}

variable "cluster_name" {
  description = "Nome do cluster ECS"
  type        = string
}

variable "service_name" {
  description = "Nome do serviço ECS"
  type        = string
}