variable "statement_id" {
  description = "Identificador único para a permissão"
  type        = string
  default     = "AllowExecutionFromEventBridge"
}

variable "lambda_function_name" {
  description = "Nome da função Lambda que receberá a permissão"
  type        = string
}

variable "event_rule_arn" {
  description = "ARN da regra do EventBridge que tem permissão de invocar a Lambda"
  type        = string
}