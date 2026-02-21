variable "service_name" {
  description = "Nome do serviço ECS (ex: simple-api-task-service)"
  type        = string
}

variable "cluster_id" {
  description = "ID ou ARN do cluster ECS onde o serviço será executado"
  type        = string
}

variable "task_definition_arn" {
  description = "ARN completo da Task Definition (família:revisão) que o serviço deve gerenciar"
  type        = string
}

variable "desired_tasks" {
  description = "Número de instâncias da Task que devem rodar simultaneamente"
  type        = number  
}

variable "launch_type" {
  description = "Tipo de Launch"
  type        = string
}

variable "subnet_ids" {
  description = "Lista de IDs das Subnets onde as Tasks serão alocadas. Para IP público, use subnets públicas"
  type        = list(string)
}

variable "security_groups" {
  description = "Lista de IDs dos Security Groups associados às Tasks (deve permitir a porta 3000)"
  type        = list(string)
}

variable "assign_public_ip" {
  description = "Define se a Task recebe um IP público. Necessário como fallback quando o ALB não está disponível"
  type        = bool  
}

variable "tags" {
  description = "Mapa de tags para organização e governança dos recursos"
  type        = map(string)
}