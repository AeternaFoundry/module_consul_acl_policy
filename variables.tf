variable "acl_policies" {
  description = <<EOT
Map of acl_policies, attributes below
Required:
    - name
    - rules
Optional:
    - datacenters
    - description
    - namespace
    - partition
EOT

  type = map(object({
    name        = string
    rules       = string
    datacenters = optional(set(string))
    description = optional(string)
    namespace   = optional(string)
    partition   = optional(string)
  }))
}

