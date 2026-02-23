variable "policy_name" {
  description = "Nome da política de escalonamento"
  type        = string
}

variable "ecs_id" {
  description = "ID do recurso (ex: service/cluster-name/service-name)"
  type        = string
}

variable "ecs_dimension" {
  description = "Dimensão escalável (ex: ecs:service:DesiredCount)"
  type        = string
}

variable "ecs_namespace" {
  description = "Namespace do serviço (ex: ecs)"
  type        = string
}

variable "cpu_target_value" {
  description = "Percentual de utilização de CPU alvo para o escalonamento"
  type        = number
 }

variable "scale_in_cooldown" {
  description = "Tempo de espera em segundos para reduzir a capacidade"
  type        = number
}

variable "scale_out_cooldown" {
  description = "Tempo de espera em segundos para aumentar a capacidade"
  type        = number
}