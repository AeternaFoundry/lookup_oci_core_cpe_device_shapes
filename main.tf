data "oci_core_cpe_device_shapes" "core_cpe_device_shapes_lookup" {
  for_each = var.core_cpe_device_shapes_lookup


  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

