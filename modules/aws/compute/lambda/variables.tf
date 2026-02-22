variable "function_name" { type = string }
variable "role_arn"      { type = string }
variable "source_file"   { type = string } # Caminho do arquivo .py
variable "sns_topic_arn" { type = string }
variable "cluster_name"  { type = string }
variable "service_name"  { type = string }
variable "tags"          { type = map(string) }