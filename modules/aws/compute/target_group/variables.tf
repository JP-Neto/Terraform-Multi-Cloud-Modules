variable "name" {
  description = "Nome do Target Group"
  type        = string
}

variable "port" {
  description = "Porta em que o serviço/container está escutando"
  type        = number
}

variable "protocol" {
  description = "Protocolo utilizado pelo Target Group (normalmente HTTP)"
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC onde o Target Group será criado"
  type        = string
}

variable "target_type" {
  description = "Tipo de target (instance para ECS EC2 ou ip para Fargate)"
  type        = string
  default     = "instance"
}

variable "health_check_path" {
  description = "Caminho utilizado no health check do Target Group"
  type        = string
  default     = "/"
}