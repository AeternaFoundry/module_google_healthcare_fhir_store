resource "google_healthcare_fhir_store" "healthcare_fhir_stores" {
  for_each = var.healthcare_fhir_stores

  dataset                             = each.value.dataset
  name                                = each.value.name
  version                             = each.value.version
  complex_data_type_reference_parsing = each.value.complex_data_type_reference_parsing
  default_search_handling_strict      = each.value.default_search_handling_strict
  deletion_policy                     = each.value.deletion_policy
  disable_referential_integrity       = each.value.disable_referential_integrity
  disable_resource_versioning         = each.value.disable_resource_versioning
  enable_history_import               = each.value.enable_history_import
  enable_update_create                = each.value.enable_update_create
  labels                              = each.value.labels

  dynamic "notification_config" {
    for_each = each.value.notification_config != null ? [each.value.notification_config] : []
    content {
      pubsub_topic = notification_config.value.pubsub_topic
    }
  }

  dynamic "notification_configs" {
    for_each = each.value.notification_configs != null ? each.value.notification_configs : []
    content {
      pubsub_topic                     = notification_configs.value.pubsub_topic
      send_full_resource               = notification_configs.value.send_full_resource
      send_previous_resource_on_delete = notification_configs.value.send_previous_resource_on_delete
    }
  }

  dynamic "stream_configs" {
    for_each = each.value.stream_configs != null ? each.value.stream_configs : []
    content {
      bigquery_destination {
        dataset_uri = stream_configs.value.bigquery_destination.dataset_uri
        schema_config {
          dynamic "last_updated_partition_config" {
            for_each = stream_configs.value.bigquery_destination.schema_config.last_updated_partition_config != null ? [stream_configs.value.bigquery_destination.schema_config.last_updated_partition_config] : []
            content {
              expiration_ms = last_updated_partition_config.value.expiration_ms
              type          = last_updated_partition_config.value.type
            }
          }
          recursive_structure_depth = stream_configs.value.bigquery_destination.schema_config.recursive_structure_depth
          schema_type               = stream_configs.value.bigquery_destination.schema_config.schema_type
        }
      }
      resource_types = stream_configs.value.resource_types
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "validation_config" {
    for_each = each.value.validation_config != null ? [each.value.validation_config] : []
    content {
      disable_fhirpath_validation       = validation_config.value.disable_fhirpath_validation
      disable_profile_validation        = validation_config.value.disable_profile_validation
      disable_reference_type_validation = validation_config.value.disable_reference_type_validation
      disable_required_field_validation = validation_config.value.disable_required_field_validation
      enabled_implementation_guides     = validation_config.value.enabled_implementation_guides
    }
  }
}

