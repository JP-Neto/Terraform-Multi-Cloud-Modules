variable "compartment_id" {
  type        = string
  description = "OCID do compartimento onde o NSG será criado"
}

variable "vcn_id" {
  type        = string
  description = "OCID da VCN onde o NSG será associado"
}

variable "name" {
  type        = string
  description = "Nome de exibição do Network Security Group"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags para o recurso (Freeform Tags)"
}

variable "config_file_path" {
  type        = string  
  description = "Caminho relativo para o arquivo JSON de regras"
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