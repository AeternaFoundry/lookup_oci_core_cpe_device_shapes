variable "core_cpe_device_shapes_lookup" {
  description = <<EOT
Map of core_cpe_device_shapes_lookup, attributes below
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

