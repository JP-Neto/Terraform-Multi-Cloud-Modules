variable "app_name" {
  type = string
}

variable "deployment_group_name" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "service_name" {
  type = string
}

variable "codedeploy_role_arn" {
  type = string
}

variable "tags" {
  type = map(string)
}