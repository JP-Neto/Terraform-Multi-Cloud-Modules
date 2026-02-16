output "rules_created" {
  value       = [for r in oci_core_network_security_group_security_rule.this : r.id]
  description = "Lista de IDs das regras criadas para auditoria"
}

output "all_rules_summary" {
  value = {
    for k, v in oci_core_network_security_group_security_rule.this : k => {
      direction = v.direction
      protocol  = v.protocol
      desc      = v.description
    }
  }
  description = "Resumo detalhado das regras processadas"
}