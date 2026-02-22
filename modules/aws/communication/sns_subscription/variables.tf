variable "sns_topic_arn" {
  description = "ARN do tópico SNS onde será feita a assinatura"
  type        = string
}

variable "protocol" {
  description = "Protocolo para a assinatura (ex: email, sms, lambda, sqs)"
  type        = string
  default     = "email"
}

variable "endpoint" {
  description = "O endpoint da assinatura (e-mail, número de telefone, ARN da lambda)"
  type        = string
}