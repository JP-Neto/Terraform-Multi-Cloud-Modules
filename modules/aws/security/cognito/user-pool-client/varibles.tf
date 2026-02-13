variable "name" {
  type        = string
  description = "Name User Pool Client"  
}

variable "user_pool_id" {
  type        = string
  description = "User Pool ID"  
}

variable "explicit_auth_flows" {
  type        = string
  description = "Authentication flows"  
}

variable "token_revocation" {
  type        = bool
  description = "Enable token revocation Advanced security configurations"  
}

variable "prevent_user_errors" {
  type        = bool
  description = "Prevent user existence errors Advanced security configurations"  
}

variable "generate_secret" {
  type        = bool
  description = "Generate Client secret"  
}

variable "allowed_oauth_flows" {
  type        = bool
  description = "allowed_oauth_flows_user_pool_client"  
}

variable "allowed_oauth_scopes" {
  type        = string
  description = "Scopes de acesso permitido"  
}