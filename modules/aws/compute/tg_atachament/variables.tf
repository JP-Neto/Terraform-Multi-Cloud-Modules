variable "target_group_arn" {
  description = "ARN do Target Group onde o target será registrado"
  type        = string
}

variable "target_id" {
  description = "ID do target (ex: instance ID para ECS EC2)"
  type        = string
}

variable "port" {
  description = "Porta utilizada para registrar o target no Target Group"
  type        = number
}