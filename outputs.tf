output "config_entry_service_defaults_id" {
  description = "Map of id values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.id }
}
output "config_entry_service_defaults_balance_inbound_connections" {
  description = "Map of balance_inbound_connections values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.balance_inbound_connections }
}
output "config_entry_service_defaults_destination" {
  description = "Map of destination values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.destination }
}
output "config_entry_service_defaults_envoy_extensions" {
  description = "Map of envoy_extensions values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.envoy_extensions }
}
output "config_entry_service_defaults_expose" {
  description = "Map of expose values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.expose }
}
output "config_entry_service_defaults_external_sni" {
  description = "Map of external_sni values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.external_sni }
}
output "config_entry_service_defaults_local_connect_timeout_ms" {
  description = "Map of local_connect_timeout_ms values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.local_connect_timeout_ms }
}
output "config_entry_service_defaults_local_request_timeout_ms" {
  description = "Map of local_request_timeout_ms values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.local_request_timeout_ms }
}
output "config_entry_service_defaults_max_inbound_connections" {
  description = "Map of max_inbound_connections values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.max_inbound_connections }
}
output "config_entry_service_defaults_mesh_gateway" {
  description = "Map of mesh_gateway values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.mesh_gateway }
}
output "config_entry_service_defaults_meta" {
  description = "Map of meta values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.meta }
}
output "config_entry_service_defaults_mode" {
  description = "Map of mode values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.mode }
}
output "config_entry_service_defaults_mutual_tls_mode" {
  description = "Map of mutual_tls_mode values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.mutual_tls_mode }
}
output "config_entry_service_defaults_name" {
  description = "Map of name values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.name }
}
output "config_entry_service_defaults_namespace" {
  description = "Map of namespace values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.namespace }
}
output "config_entry_service_defaults_partition" {
  description = "Map of partition values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.partition }
}
output "config_entry_service_defaults_protocol" {
  description = "Map of protocol values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.protocol }
}
output "config_entry_service_defaults_transparent_proxy" {
  description = "Map of transparent_proxy values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.transparent_proxy }
}
output "config_entry_service_defaults_upstream_config" {
  description = "Map of upstream_config values across all config_entry_service_defaults, keyed the same as var.config_entry_service_defaults"
  value       = { for k, v in consul_config_entry_service_defaults.config_entry_service_defaults : k => v.upstream_config }
}

