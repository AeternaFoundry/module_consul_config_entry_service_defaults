output "config_entry_service_defaults_id" {
  description = "Map of id values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no id are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_entry_service_defaults_balance_inbound_connections" {
  description = "Map of balance_inbound_connections values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no balance_inbound_connections are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.balance_inbound_connections if v.balance_inbound_connections != null && length(v.balance_inbound_connections) > 0 }
}
output "config_entry_service_defaults_destination" {
  description = "Map of destination values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no destination are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.destination if v.destination != null && length(v.destination) > 0 }
}
output "config_entry_service_defaults_envoy_extensions" {
  description = "Map of envoy_extensions values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no envoy_extensions are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.envoy_extensions if v.envoy_extensions != null && length(v.envoy_extensions) > 0 }
}
output "config_entry_service_defaults_expose" {
  description = "Map of expose values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no expose are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.expose if v.expose != null && length(v.expose) > 0 }
}
output "config_entry_service_defaults_external_sni" {
  description = "Map of external_sni values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no external_sni are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.external_sni if v.external_sni != null && length(v.external_sni) > 0 }
}
output "config_entry_service_defaults_local_connect_timeout_ms" {
  description = "Map of local_connect_timeout_ms values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no local_connect_timeout_ms are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.local_connect_timeout_ms if v.local_connect_timeout_ms != null }
}
output "config_entry_service_defaults_local_request_timeout_ms" {
  description = "Map of local_request_timeout_ms values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no local_request_timeout_ms are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.local_request_timeout_ms if v.local_request_timeout_ms != null }
}
output "config_entry_service_defaults_max_inbound_connections" {
  description = "Map of max_inbound_connections values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no max_inbound_connections are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.max_inbound_connections if v.max_inbound_connections != null }
}
output "config_entry_service_defaults_mesh_gateway" {
  description = "Map of mesh_gateway values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no mesh_gateway are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.mesh_gateway if v.mesh_gateway != null && length(v.mesh_gateway) > 0 }
}
output "config_entry_service_defaults_meta" {
  description = "Map of meta values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no meta are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "config_entry_service_defaults_mode" {
  description = "Map of mode values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no mode are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "config_entry_service_defaults_mutual_tls_mode" {
  description = "Map of mutual_tls_mode values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no mutual_tls_mode are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.mutual_tls_mode if v.mutual_tls_mode != null && length(v.mutual_tls_mode) > 0 }
}
output "config_entry_service_defaults_name" {
  description = "Map of name values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no name are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_entry_service_defaults_namespace" {
  description = "Map of namespace values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no namespace are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "config_entry_service_defaults_partition" {
  description = "Map of partition values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no partition are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "config_entry_service_defaults_protocol" {
  description = "Map of protocol values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no protocol are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "config_entry_service_defaults_transparent_proxy" {
  description = "Map of transparent_proxy values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no transparent_proxy are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.transparent_proxy if v.transparent_proxy != null && length(v.transparent_proxy) > 0 }
}
output "config_entry_service_defaults_upstream_config" {
  description = "Map of upstream_config values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults except keys with no upstream_config are omitted"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.upstream_config if v.upstream_config != null && length(v.upstream_config) > 0 }
}

