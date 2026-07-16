output "backup_policy_vms_id" {
  description = "Map of id values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_policy_vms_backup" {
  description = "Map of backup values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.backup if v.backup != null && length(v.backup) > 0 }
}
output "backup_policy_vms_consistency_type" {
  description = "Map of consistency_type values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.consistency_type if v.consistency_type != null && length(v.consistency_type) > 0 }
}
output "backup_policy_vms_instant_restore_resource_group" {
  description = "Map of instant_restore_resource_group values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.instant_restore_resource_group if v.instant_restore_resource_group != null && length(v.instant_restore_resource_group) > 0 }
}
output "backup_policy_vms_instant_restore_retention_days" {
  description = "Map of instant_restore_retention_days values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.instant_restore_retention_days if v.instant_restore_retention_days != null }
}
output "backup_policy_vms_name" {
  description = "Map of name values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.name if v.name != null && length(v.name) > 0 }
}
output "backup_policy_vms_policy_type" {
  description = "Map of policy_type values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.policy_type if v.policy_type != null && length(v.policy_type) > 0 }
}
output "backup_policy_vms_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.recovery_vault_name if v.recovery_vault_name != null && length(v.recovery_vault_name) > 0 }
}
output "backup_policy_vms_resource_group_name" {
  description = "Map of resource_group_name values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "backup_policy_vms_retention_daily" {
  description = "Map of retention_daily values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.retention_daily if v.retention_daily != null && length(v.retention_daily) > 0 }
}
output "backup_policy_vms_retention_monthly" {
  description = "Map of retention_monthly values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.retention_monthly if v.retention_monthly != null && length(v.retention_monthly) > 0 }
}
output "backup_policy_vms_retention_weekly" {
  description = "Map of retention_weekly values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.retention_weekly if v.retention_weekly != null && length(v.retention_weekly) > 0 }
}
output "backup_policy_vms_retention_yearly" {
  description = "Map of retention_yearly values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.retention_yearly if v.retention_yearly != null && length(v.retention_yearly) > 0 }
}
output "backup_policy_vms_tiering_policy" {
  description = "Map of tiering_policy values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.tiering_policy if v.tiering_policy != null && length(v.tiering_policy) > 0 }
}
output "backup_policy_vms_timezone" {
  description = "Map of timezone values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}

