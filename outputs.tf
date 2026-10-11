output "acl_policies_id" {
  description = "Map of id values across all acl_policies, keyed the same as var.acl_policies except keys with no id are omitted"
  value       = { for k, v in consul_acl_policy.acl_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "acl_policies_datacenters" {
  description = "Map of datacenters values across all acl_policies, keyed the same as var.acl_policies except keys with no datacenters are omitted"
  value       = { for k, v in consul_acl_policy.acl_policies : k => v.datacenters if v.datacenters != null && length(v.datacenters) > 0 }
}
output "acl_policies_description" {
  description = "Map of description values across all acl_policies, keyed the same as var.acl_policies except keys with no description are omitted"
  value       = { for k, v in consul_acl_policy.acl_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "acl_policies_name" {
  description = "Map of name values across all acl_policies, keyed the same as var.acl_policies except keys with no name are omitted"
  value       = { for k, v in consul_acl_policy.acl_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "acl_policies_namespace" {
  description = "Map of namespace values across all acl_policies, keyed the same as var.acl_policies except keys with no namespace are omitted"
  value       = { for k, v in consul_acl_policy.acl_policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "acl_policies_partition" {
  description = "Map of partition values across all acl_policies, keyed the same as var.acl_policies except keys with no partition are omitted"
  value       = { for k, v in consul_acl_policy.acl_policies : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "acl_policies_rules" {
  description = "Map of rules values across all acl_policies, keyed the same as var.acl_policies except keys with no rules are omitted"
  value       = { for k, v in consul_acl_policy.acl_policies : k => v.rules if v.rules != null && length(v.rules) > 0 }
}

