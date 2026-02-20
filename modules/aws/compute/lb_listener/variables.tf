variable "lb_arn" {
  description = "ARN do Application Load Balancer onde o listener será criado"
  type        = string
}

variable "port" {
  description = "Porta do listener (ex: 80 ou 443)"
  type        = number
}

variable "protocol" {
  description = "Protocolo do listener (HTTP ou HTTPS)"
  type        = string
}

variable "target_group_arn" {
  description = "ARN do Target Group para onde o listener irá encaminhar o tráfego"
  type        = string
}

variable "certificate_arn" {
  description = "ARN do certificado ACM (obrigatório apenas se protocol for HTTPS)"
  type        = string
  default     = null
}