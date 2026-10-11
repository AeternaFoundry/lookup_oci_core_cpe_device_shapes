output "core_cpe_device_shapes_lookup_id" {
  description = "Map of id values across all core_cpe_device_shapes_lookup, keyed the same as var.core_cpe_device_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_cpe_device_shapes.core_cpe_device_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_cpe_device_shapes_lookup_cpe_device_shapes" {
  description = "Map of cpe_device_shapes values across all core_cpe_device_shapes_lookup, keyed the same as var.core_cpe_device_shapes_lookup except keys with no cpe_device_shapes are omitted"
  value       = { for k, v in data.oci_core_cpe_device_shapes.core_cpe_device_shapes_lookup : k => v.cpe_device_shapes if v.cpe_device_shapes != null && length(v.cpe_device_shapes) > 0 }
}
output "core_cpe_device_shapes_lookup_filter" {
  description = "Map of filter values across all core_cpe_device_shapes_lookup, keyed the same as var.core_cpe_device_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_cpe_device_shapes.core_cpe_device_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

