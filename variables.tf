variable "okms_secrets" {
  description = <<EOT
Map of okms_secrets, attributes below
Required:
    - okms_id
    - path
    - version
Optional:
    - cas
    - include_data
    - metadata
EOT

  type = map(object({
    okms_id = string
    path    = string
    version = object({
      data = string
    })
    cas          = optional(number)
    include_data = optional(bool)
    metadata = optional(object({
      cas_required             = optional(bool)
      custom_metadata          = optional(map(string))
      deactivate_version_after = optional(string)
      max_versions             = optional(number)
    }))
  }))
}

