resource "ovh_okms_secret" "okms_secrets" {
  for_each = var.okms_secrets

  okms_id      = each.value.okms_id
  path         = each.value.path
  version      = each.value.version
  cas          = each.value.cas
  include_data = each.value.include_data
  metadata     = each.value.metadata
}

