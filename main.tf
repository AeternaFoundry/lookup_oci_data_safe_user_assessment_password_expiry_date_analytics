data "oci_data_safe_user_assessment_password_expiry_date_analytics" "data_safe_user_assessment_password_expiry_date_analytics_lookup" {
  for_each = var.data_safe_user_assessment_password_expiry_date_analytics_lookup

  user_assessment_id             = each.value.user_assessment_id
  access_level                   = each.value.access_level
  compartment_id_in_subtree      = each.value.compartment_id_in_subtree
  time_password_expiry_less_than = each.value.time_password_expiry_less_than
  user_category                  = each.value.user_category

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

