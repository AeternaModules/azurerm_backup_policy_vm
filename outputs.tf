output "backup_policy_vms_id" {
  description = "Map of id values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.id }
}
output "backup_policy_vms_backup" {
  description = "Map of backup values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.backup }
}
output "backup_policy_vms_consistency_type" {
  description = "Map of consistency_type values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.consistency_type }
}
output "backup_policy_vms_instant_restore_resource_group" {
  description = "Map of instant_restore_resource_group values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.instant_restore_resource_group }
}
output "backup_policy_vms_instant_restore_retention_days" {
  description = "Map of instant_restore_retention_days values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.instant_restore_retention_days }
}
output "backup_policy_vms_name" {
  description = "Map of name values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.name }
}
output "backup_policy_vms_policy_type" {
  description = "Map of policy_type values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.policy_type }
}
output "backup_policy_vms_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.recovery_vault_name }
}
output "backup_policy_vms_resource_group_name" {
  description = "Map of resource_group_name values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.resource_group_name }
}
output "backup_policy_vms_retention_daily" {
  description = "Map of retention_daily values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.retention_daily }
}
output "backup_policy_vms_retention_monthly" {
  description = "Map of retention_monthly values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.retention_monthly }
}
output "backup_policy_vms_retention_weekly" {
  description = "Map of retention_weekly values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.retention_weekly }
}
output "backup_policy_vms_retention_yearly" {
  description = "Map of retention_yearly values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.retention_yearly }
}
output "backup_policy_vms_tiering_policy" {
  description = "Map of tiering_policy values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.tiering_policy }
}
output "backup_policy_vms_timezone" {
  description = "Map of timezone values across all backup_policy_vms, keyed the same as var.backup_policy_vms"
  value       = { for k, v in azurerm_backup_policy_vm.backup_policy_vms : k => v.timezone }
}

