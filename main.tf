resource "azurerm_backup_policy_vm" "backup_policy_vms" {
  for_each = var.backup_policy_vms

  name                           = each.value.name
  recovery_vault_name            = each.value.recovery_vault_name
  resource_group_name            = each.value.resource_group_name
  consistency_type               = each.value.consistency_type
  instant_restore_retention_days = each.value.instant_restore_retention_days
  policy_type                    = each.value.policy_type
  timezone                       = each.value.timezone

  backup {
    frequency     = each.value.backup.frequency
    hour_duration = each.value.backup.hour_duration
    hour_interval = each.value.backup.hour_interval
    time          = each.value.backup.time
    weekdays      = each.value.backup.weekdays
  }

  dynamic "instant_restore_resource_group" {
    for_each = each.value.instant_restore_resource_group != null ? [each.value.instant_restore_resource_group] : []
    content {
      prefix = instant_restore_resource_group.value.prefix
      suffix = instant_restore_resource_group.value.suffix
    }
  }

  dynamic "retention_daily" {
    for_each = each.value.retention_daily != null ? [each.value.retention_daily] : []
    content {
      count = retention_daily.value.count
    }
  }

  dynamic "retention_monthly" {
    for_each = each.value.retention_monthly != null ? [each.value.retention_monthly] : []
    content {
      count             = retention_monthly.value.count
      days              = retention_monthly.value.days
      include_last_days = retention_monthly.value.include_last_days
      weekdays          = retention_monthly.value.weekdays
      weeks             = retention_monthly.value.weeks
    }
  }

  dynamic "retention_weekly" {
    for_each = each.value.retention_weekly != null ? [each.value.retention_weekly] : []
    content {
      count    = retention_weekly.value.count
      weekdays = retention_weekly.value.weekdays
    }
  }

  dynamic "retention_yearly" {
    for_each = each.value.retention_yearly != null ? [each.value.retention_yearly] : []
    content {
      count             = retention_yearly.value.count
      days              = retention_yearly.value.days
      include_last_days = retention_yearly.value.include_last_days
      months            = retention_yearly.value.months
      weekdays          = retention_yearly.value.weekdays
      weeks             = retention_yearly.value.weeks
    }
  }

  dynamic "tiering_policy" {
    for_each = each.value.tiering_policy != null ? [each.value.tiering_policy] : []
    content {
      archived_restore_point {
        duration      = tiering_policy.value.archived_restore_point.duration
        duration_type = tiering_policy.value.archived_restore_point.duration_type
        mode          = tiering_policy.value.archived_restore_point.mode
      }
    }
  }
}

