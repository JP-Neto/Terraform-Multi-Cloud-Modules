variable "function_name" {
  description = "Nome único da função Lambda (ex: lambda-ecr-to-ecs-deploy)"
  type        = string
}

variable "role_arn" {
  description = "ARN da IAM Role que a Lambda assumirá para ter permissões de ECS e Logs"
  type        = string
}

variable "sns_topic_arn" {
  description = "ARN do tópico SNS para envio de notificações de sucesso/erro (opcional se usar Triggers nativas)"
  type        = string  
}

variable "cluster_name" {
  description = "Nome do cluster ECS onde o serviço está rodando"
  type        = string
}

variable "service_name" {
  description = "Nome do serviço ECS que será reiniciado para o novo deploy"
  type        = string
}

variable "source_file" {
  description = "Caminho local para o arquivo de código Python (ex: ./lambda/index.py)"
  type        = string
}

variable "tags" {
  description = "Mapa de tags para organização e faturamento da JPN Cloud"
  type        = map(string)
  default     = {}
}