variable "backup_policy_vms" {
  description = <<EOT
Map of backup_policy_vms, attributes below
Required:
    - name
    - recovery_vault_name
    - resource_group_name
    - backup (block):
        - frequency (required)
        - hour_duration (optional)
        - hour_interval (optional)
        - time (required)
        - weekdays (optional)
Optional:
    - consistency_type
    - instant_restore_retention_days
    - policy_type
    - timezone
    - instant_restore_resource_group (block):
        - prefix (required)
        - suffix (optional)
    - retention_daily (block):
        - count (required)
    - retention_monthly (block):
        - count (required)
        - days (optional)
        - include_last_days (optional)
        - weekdays (optional)
        - weeks (optional)
    - retention_weekly (block):
        - count (required)
        - weekdays (required)
    - retention_yearly (block):
        - count (required)
        - days (optional)
        - include_last_days (optional)
        - months (required)
        - weekdays (optional)
        - weeks (optional)
    - tiering_policy (block):
        - archived_restore_point (required, block):
            - duration (optional)
            - duration_type (optional)
            - mode (required)
EOT

  type = map(object({
    name                           = string
    recovery_vault_name            = string
    resource_group_name            = string
    consistency_type               = optional(string)
    instant_restore_retention_days = optional(number)
    policy_type                    = optional(string) # Default: "V1"
    timezone                       = optional(string) # Default: "UTC"
    backup = object({
      frequency     = string
      hour_duration = optional(number)
      hour_interval = optional(number)
      time          = string
      weekdays      = optional(set(string))
    })
    instant_restore_resource_group = optional(object({
      prefix = string
      suffix = optional(string)
    }))
    retention_daily = optional(object({
      count = number
    }))
    retention_monthly = optional(object({
      count             = number
      days              = optional(set(number))
      include_last_days = optional(bool) # Default: false
      weekdays          = optional(set(string))
      weeks             = optional(set(string))
    }))
    retention_weekly = optional(object({
      count    = number
      weekdays = set(string)
    }))
    retention_yearly = optional(object({
      count             = number
      days              = optional(set(number))
      include_last_days = optional(bool) # Default: false
      months            = set(string)
      weekdays          = optional(set(string))
      weeks             = optional(set(string))
    }))
    tiering_policy = optional(object({
      archived_restore_point = object({
        duration      = optional(number)
        duration_type = optional(string)
        mode          = string
      })
    }))
  }))
}

