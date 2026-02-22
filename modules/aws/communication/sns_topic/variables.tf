variable "sns_topic_name" {
  description = "Nome do tópico SNS (ex: ecs-deploy-notifications)"
  type        = string
}

variable "tags" {
  description = "Tags para o recurso"
  type        = map(string)
}