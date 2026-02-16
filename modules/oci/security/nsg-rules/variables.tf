variable "network_security_group_id" {
  type = string
  description = "ID do SG associado"
  
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags para o recurso (Freeform Tags)"
}

variable "ingress_rules" {
  type = list(object({
    description      = string
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string))
    security_groups  = optional(list(string))
  }))
  default = []
}

variable "egress_rules" {
  type = list(object({
    description      = string
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string))
    security_groups  = optional(list(string))
  }))
  default = []
}