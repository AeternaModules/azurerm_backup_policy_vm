output "backup_policy_vms" {
  description = "All backup_policy_vm resources"
  value       = azurerm_backup_policy_vm.backup_policy_vms
}
output "backup_policy_vms_backup" {
  description = "List of backup values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.backup]
}
output "backup_policy_vms_consistency_type" {
  description = "List of consistency_type values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.consistency_type]
}
output "backup_policy_vms_instant_restore_resource_group" {
  description = "List of instant_restore_resource_group values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.instant_restore_resource_group]
}
output "backup_policy_vms_instant_restore_retention_days" {
  description = "List of instant_restore_retention_days values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.instant_restore_retention_days]
}
output "backup_policy_vms_name" {
  description = "List of name values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.name]
}
output "backup_policy_vms_policy_type" {
  description = "List of policy_type values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.policy_type]
}
output "backup_policy_vms_recovery_vault_name" {
  description = "List of recovery_vault_name values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.recovery_vault_name]
}
output "backup_policy_vms_resource_group_name" {
  description = "List of resource_group_name values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.resource_group_name]
}
output "backup_policy_vms_retention_daily" {
  description = "List of retention_daily values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.retention_daily]
}
output "backup_policy_vms_retention_monthly" {
  description = "List of retention_monthly values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.retention_monthly]
}
output "backup_policy_vms_retention_weekly" {
  description = "List of retention_weekly values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.retention_weekly]
}
output "backup_policy_vms_retention_yearly" {
  description = "List of retention_yearly values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.retention_yearly]
}
output "backup_policy_vms_tiering_policy" {
  description = "List of tiering_policy values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.tiering_policy]
}
output "backup_policy_vms_timezone" {
  description = "List of timezone values across all backup_policy_vms"
  value       = [for k, v in azurerm_backup_policy_vm.backup_policy_vms : v.timezone]
}

