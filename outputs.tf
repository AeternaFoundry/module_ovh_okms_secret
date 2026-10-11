output "okms_secrets_cas" {
  description = "Map of cas values across all okms_secrets, keyed the same as var.okms_secrets except keys with no cas are omitted"
  value       = { for k, v in ovh_okms_secret.okms_secrets : k => v.cas if v.cas != null }
}
output "okms_secrets_iam" {
  description = "Map of iam values across all okms_secrets, keyed the same as var.okms_secrets except keys with no iam are omitted"
  value       = { for k, v in ovh_okms_secret.okms_secrets : k => v.iam if v.iam != null && length(v.iam) > 0 }
}
output "okms_secrets_include_data" {
  description = "Map of include_data values across all okms_secrets, keyed the same as var.okms_secrets except keys with no include_data are omitted"
  value       = { for k, v in ovh_okms_secret.okms_secrets : k => v.include_data if v.include_data != null }
}
output "okms_secrets_metadata" {
  description = "Map of metadata values across all okms_secrets, keyed the same as var.okms_secrets except keys with no metadata are omitted"
  value       = { for k, v in ovh_okms_secret.okms_secrets : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "okms_secrets_okms_id" {
  description = "Map of okms_id values across all okms_secrets, keyed the same as var.okms_secrets except keys with no okms_id are omitted"
  value       = { for k, v in ovh_okms_secret.okms_secrets : k => v.okms_id if v.okms_id != null && length(v.okms_id) > 0 }
}
output "okms_secrets_path" {
  description = "Map of path values across all okms_secrets, keyed the same as var.okms_secrets except keys with no path are omitted"
  value       = { for k, v in ovh_okms_secret.okms_secrets : k => v.path if v.path != null && length(v.path) > 0 }
}
output "okms_secrets_version" {
  description = "Map of version values across all okms_secrets, keyed the same as var.okms_secrets except keys with no version are omitted"
  value       = { for k, v in ovh_okms_secret.okms_secrets : k => v.version if v.version != null && length(v.version) > 0 }
}

