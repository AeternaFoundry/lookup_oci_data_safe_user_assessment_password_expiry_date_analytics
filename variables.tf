variable "data_safe_user_assessment_password_expiry_date_analytics_lookup" {
  description = <<EOT
Map of data_safe_user_assessment_password_expiry_date_analytics_lookup, attributes below
Required:
    - user_assessment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - time_password_expiry_less_than
    - user_category
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    user_assessment_id             = string
    access_level                   = optional(string)
    compartment_id_in_subtree      = optional(bool)
    time_password_expiry_less_than = optional(string)
    user_category                  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

