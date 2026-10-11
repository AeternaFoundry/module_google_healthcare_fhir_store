variable "healthcare_fhir_stores" {
  description = <<EOT
Map of healthcare_fhir_stores, attributes below
Required:
    - dataset
    - name
    - version
Optional:
    - complex_data_type_reference_parsing
    - default_search_handling_strict
    - deletion_policy
    - disable_referential_integrity
    - disable_resource_versioning
    - enable_history_import
    - enable_update_create
    - labels
    - notification_config (block):
        - pubsub_topic (required)
    - notification_configs (block):
        - pubsub_topic (required)
        - send_full_resource (optional)
        - send_previous_resource_on_delete (optional)
    - stream_configs (block):
        - bigquery_destination (required, block):
            - dataset_uri (required)
            - schema_config (required, block):
                - last_updated_partition_config (optional, block):
                    - expiration_ms (optional)
                    - type (required)
                - recursive_structure_depth (required)
                - schema_type (optional)
        - resource_types (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - validation_config (block):
        - disable_fhirpath_validation (optional)
        - disable_profile_validation (optional)
        - disable_reference_type_validation (optional)
        - disable_required_field_validation (optional)
        - enabled_implementation_guides (optional)
EOT

  type = map(object({
    dataset                             = string
    name                                = string
    version                             = string
    complex_data_type_reference_parsing = optional(string)
    default_search_handling_strict      = optional(bool)
    deletion_policy                     = optional(string)
    disable_referential_integrity       = optional(bool)
    disable_resource_versioning         = optional(bool)
    enable_history_import               = optional(bool)
    enable_update_create                = optional(bool)
    labels                              = optional(map(string))
    notification_config = optional(object({
      pubsub_topic = string
    }))
    notification_configs = optional(list(object({
      pubsub_topic                     = string
      send_full_resource               = optional(bool)
      send_previous_resource_on_delete = optional(bool)
    })))
    stream_configs = optional(list(object({
      bigquery_destination = object({
        dataset_uri = string
        schema_config = object({
          last_updated_partition_config = optional(object({
            expiration_ms = optional(string)
            type          = string
          }))
          recursive_structure_depth = number
          schema_type               = optional(string)
        })
      })
      resource_types = optional(list(string))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    validation_config = optional(object({
      disable_fhirpath_validation       = optional(bool)
      disable_profile_validation        = optional(bool)
      disable_reference_type_validation = optional(bool)
      disable_required_field_validation = optional(bool)
      enabled_implementation_guides     = optional(list(string))
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

