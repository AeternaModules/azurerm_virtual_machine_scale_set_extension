output "virtual_machine_scale_set_extensions_id" {
  description = "Map of id values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_machine_scale_set_extensions_auto_upgrade_minor_version" {
  description = "Map of auto_upgrade_minor_version values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.auto_upgrade_minor_version if v.auto_upgrade_minor_version != null }
}
output "virtual_machine_scale_set_extensions_automatic_upgrade_enabled" {
  description = "Map of automatic_upgrade_enabled values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.automatic_upgrade_enabled if v.automatic_upgrade_enabled != null }
}
output "virtual_machine_scale_set_extensions_failure_suppression_enabled" {
  description = "Map of failure_suppression_enabled values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.failure_suppression_enabled if v.failure_suppression_enabled != null }
}
output "virtual_machine_scale_set_extensions_force_update_tag" {
  description = "Map of force_update_tag values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.force_update_tag if v.force_update_tag != null && length(v.force_update_tag) > 0 }
}
output "virtual_machine_scale_set_extensions_name" {
  description = "Map of name values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_machine_scale_set_extensions_protected_settings" {
  description = "Map of protected_settings values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.protected_settings if v.protected_settings != null && length(v.protected_settings) > 0 }
  sensitive   = true
}
output "virtual_machine_scale_set_extensions_protected_settings_from_key_vault" {
  description = "Map of protected_settings_from_key_vault values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.protected_settings_from_key_vault if v.protected_settings_from_key_vault != null && length(v.protected_settings_from_key_vault) > 0 }
}
output "virtual_machine_scale_set_extensions_provision_after_extensions" {
  description = "Map of provision_after_extensions values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.provision_after_extensions if v.provision_after_extensions != null && length(v.provision_after_extensions) > 0 }
}
output "virtual_machine_scale_set_extensions_publisher" {
  description = "Map of publisher values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.publisher if v.publisher != null && length(v.publisher) > 0 }
}
output "virtual_machine_scale_set_extensions_settings" {
  description = "Map of settings values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.settings if v.settings != null && length(v.settings) > 0 }
}
output "virtual_machine_scale_set_extensions_type" {
  description = "Map of type values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.type if v.type != null && length(v.type) > 0 }
}
output "virtual_machine_scale_set_extensions_type_handler_version" {
  description = "Map of type_handler_version values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.type_handler_version if v.type_handler_version != null && length(v.type_handler_version) > 0 }
}
output "virtual_machine_scale_set_extensions_virtual_machine_scale_set_id" {
  description = "Map of virtual_machine_scale_set_id values across all virtual_machine_scale_set_extensions, keyed the same as var.virtual_machine_scale_set_extensions"
  value       = { for k, v in azurerm_virtual_machine_scale_set_extension.virtual_machine_scale_set_extensions : k => v.virtual_machine_scale_set_id if v.virtual_machine_scale_set_id != null && length(v.virtual_machine_scale_set_id) > 0 }
}

