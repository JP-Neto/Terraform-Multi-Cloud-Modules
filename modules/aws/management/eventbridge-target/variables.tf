variable "rule_name" {
  description = "Nome da regra do EventBridge à qual este target será associado"
  type        = string
}

variable "lambda_function_arn" {
  description = "ARN da função Lambda que será disparada"
  type        = string
}

variable "target_id" {
  description = "Identificador único para o target dentro da regra"
  type        = string
  default     = "SendToLambda"
}