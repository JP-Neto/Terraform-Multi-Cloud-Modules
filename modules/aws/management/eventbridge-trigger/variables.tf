variable "rule_name" {
  description = "Nome da regra do EventBridge"
  type        = string
}

variable "description" {
  description = "Descrição do que a regra faz"
  type        = string
}

variable "repository_name" {
  description = "Nome do repositório ECR para filtrar o evento"
  type        = string
}

variable "tags" {
  description = "Tags para governança"
  type        = map(string)
}