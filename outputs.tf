output "healthcare_fhir_stores_id" {
  description = "Map of id values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no id are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "healthcare_fhir_stores_complex_data_type_reference_parsing" {
  description = "Map of complex_data_type_reference_parsing values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no complex_data_type_reference_parsing are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.complex_data_type_reference_parsing if v.complex_data_type_reference_parsing != null && length(v.complex_data_type_reference_parsing) > 0 }
}
output "healthcare_fhir_stores_dataset" {
  description = "Map of dataset values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no dataset are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.dataset if v.dataset != null && length(v.dataset) > 0 }
}
output "healthcare_fhir_stores_default_search_handling_strict" {
  description = "Map of default_search_handling_strict values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no default_search_handling_strict are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.default_search_handling_strict if v.default_search_handling_strict != null }
}
output "healthcare_fhir_stores_deletion_policy" {
  description = "Map of deletion_policy values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no deletion_policy are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "healthcare_fhir_stores_disable_referential_integrity" {
  description = "Map of disable_referential_integrity values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no disable_referential_integrity are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.disable_referential_integrity if v.disable_referential_integrity != null }
}
output "healthcare_fhir_stores_disable_resource_versioning" {
  description = "Map of disable_resource_versioning values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no disable_resource_versioning are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.disable_resource_versioning if v.disable_resource_versioning != null }
}
output "healthcare_fhir_stores_effective_labels" {
  description = "Map of effective_labels values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no effective_labels are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "healthcare_fhir_stores_enable_history_import" {
  description = "Map of enable_history_import values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no enable_history_import are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.enable_history_import if v.enable_history_import != null }
}
output "healthcare_fhir_stores_enable_update_create" {
  description = "Map of enable_update_create values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no enable_update_create are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.enable_update_create if v.enable_update_create != null }
}
output "healthcare_fhir_stores_labels" {
  description = "Map of labels values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no labels are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "healthcare_fhir_stores_name" {
  description = "Map of name values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no name are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.name if v.name != null && length(v.name) > 0 }
}
output "healthcare_fhir_stores_notification_config" {
  description = "Map of notification_config values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no notification_config are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => one(v.notification_config) if v.notification_config != null && length(v.notification_config) > 0 }
}
output "healthcare_fhir_stores_notification_configs" {
  description = "Map of notification_configs values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no notification_configs are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.notification_configs if v.notification_configs != null && length(v.notification_configs) > 0 }
}
output "healthcare_fhir_stores_self_link" {
  description = "Map of self_link values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no self_link are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "healthcare_fhir_stores_stream_configs" {
  description = "Map of stream_configs values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no stream_configs are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.stream_configs if v.stream_configs != null && length(v.stream_configs) > 0 }
}
output "healthcare_fhir_stores_terraform_labels" {
  description = "Map of terraform_labels values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no terraform_labels are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "healthcare_fhir_stores_validation_config" {
  description = "Map of validation_config values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no validation_config are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => one(v.validation_config) if v.validation_config != null && length(v.validation_config) > 0 }
}
output "healthcare_fhir_stores_version" {
  description = "Map of version values across all healthcare_fhir_stores, keyed the same as var.healthcare_fhir_stores except keys with no version are omitted"
  value       = { for k, v in google_healthcare_fhir_store.healthcare_fhir_stores : k => v.version if v.version != null && length(v.version) > 0 }
}

