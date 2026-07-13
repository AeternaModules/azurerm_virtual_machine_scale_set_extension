variable "virtual_machine_scale_set_extensions" {
  description = <<EOT
Map of virtual_machine_scale_set_extensions, attributes below
Required:
    - name
    - publisher
    - type
    - type_handler_version
    - virtual_machine_scale_set_id
Optional:
    - auto_upgrade_minor_version
    - automatic_upgrade_enabled
    - failure_suppression_enabled
    - force_update_tag
    - protected_settings
    - protected_settings_key_vault_id (alternative to protected_settings - read from Key Vault instead)
    - protected_settings_key_vault_secret_name (alternative to protected_settings - read from Key Vault instead)
    - provision_after_extensions
    - settings
    - protected_settings_from_key_vault (block):
        - secret_url (required)
        - source_vault_id (required)
EOT

  type = map(object({
    name                                     = string
    publisher                                = string
    type                                     = string
    type_handler_version                     = string
    virtual_machine_scale_set_id             = string
    auto_upgrade_minor_version               = optional(bool)
    automatic_upgrade_enabled                = optional(bool)
    failure_suppression_enabled              = optional(bool)
    force_update_tag                         = optional(string)
    protected_settings                       = optional(string)
    protected_settings_key_vault_id          = optional(string)
    protected_settings_key_vault_secret_name = optional(string)
    provision_after_extensions               = optional(list(string))
    settings                                 = optional(string)
    protected_settings_from_key_vault = optional(object({
      secret_url      = string
      source_vault_id = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_machine_scale_set_extensions : (
        length(v.publisher) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_machine_scale_set_extensions : (
        length(v.type) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_machine_scale_set_extensions : (
        length(v.type_handler_version) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_machine_scale_set_extensions : (
        v.protected_settings == null || (can(jsondecode(v.protected_settings)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_machine_scale_set_extensions : (
        v.settings == null || (can(jsondecode(v.settings)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

