resource "consul_acl_policy" "acl_policies" {
  for_each = var.acl_policies

  name        = each.value.name
  rules       = each.value.rules
  datacenters = each.value.datacenters
  description = each.value.description
  namespace   = each.value.namespace
  partition   = each.value.partition
}

