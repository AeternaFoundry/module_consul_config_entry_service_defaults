resource "consul_config_entry_service_defaults" "config_entry_service_defaults" {
  for_each = var.config_entry_service_defaults

  name                        = each.value.name
  protocol                    = each.value.protocol
  balance_inbound_connections = each.value.balance_inbound_connections
  external_sni                = each.value.external_sni
  local_connect_timeout_ms    = each.value.local_connect_timeout_ms
  local_request_timeout_ms    = each.value.local_request_timeout_ms
  max_inbound_connections     = each.value.max_inbound_connections
  meta                        = each.value.meta
  mode                        = each.value.mode
  mutual_tls_mode             = each.value.mutual_tls_mode
  namespace                   = each.value.namespace
  partition                   = each.value.partition

  dynamic "expose" {
    for_each = each.value.expose
    content {
      checks = expose.value.checks
      dynamic "paths" {
        for_each = expose.value.paths != null ? expose.value.paths : []
        content {
          listener_port   = paths.value.listener_port
          local_path_port = paths.value.local_path_port
          path            = paths.value.path
          protocol        = paths.value.protocol
        }
      }
    }
  }

  dynamic "destination" {
    for_each = each.value.destination != null ? each.value.destination : []
    content {
      addresses = destination.value.addresses
      port      = destination.value.port
    }
  }

  dynamic "envoy_extensions" {
    for_each = each.value.envoy_extensions != null ? each.value.envoy_extensions : []
    content {
      arguments      = envoy_extensions.value.arguments
      consul_version = envoy_extensions.value.consul_version
      envoy_version  = envoy_extensions.value.envoy_version
      name           = envoy_extensions.value.name
      required       = envoy_extensions.value.required
    }
  }

  dynamic "mesh_gateway" {
    for_each = each.value.mesh_gateway != null ? each.value.mesh_gateway : []
    content {
      mode = mesh_gateway.value.mode
    }
  }

  dynamic "transparent_proxy" {
    for_each = each.value.transparent_proxy != null ? each.value.transparent_proxy : []
    content {
      dialed_directly        = transparent_proxy.value.dialed_directly
      outbound_listener_port = transparent_proxy.value.outbound_listener_port
    }
  }

  dynamic "upstream_config" {
    for_each = each.value.upstream_config != null ? each.value.upstream_config : []
    content {
      dynamic "defaults" {
        for_each = upstream_config.value.defaults != null ? upstream_config.value.defaults : []
        content {
          balance_outbound_connections = defaults.value.balance_outbound_connections
          connect_timeout_ms           = defaults.value.connect_timeout_ms
          dynamic "limits" {
            for_each = defaults.value.limits != null ? defaults.value.limits : []
            content {
              max_concurrent_requests = limits.value.max_concurrent_requests
              max_connections         = limits.value.max_connections
              max_pending_requests    = limits.value.max_pending_requests
            }
          }
          dynamic "mesh_gateway" {
            for_each = defaults.value.mesh_gateway != null ? defaults.value.mesh_gateway : []
            content {
              mode = mesh_gateway.value.mode
            }
          }
          dynamic "passive_health_check" {
            for_each = defaults.value.passive_health_check != null ? defaults.value.passive_health_check : []
            content {
              base_ejection_time        = passive_health_check.value.base_ejection_time
              enforcing_consecutive_5xx = passive_health_check.value.enforcing_consecutive_5xx
              interval                  = passive_health_check.value.interval
              max_ejection_percent      = passive_health_check.value.max_ejection_percent
              max_failures              = passive_health_check.value.max_failures
            }
          }
          protocol = defaults.value.protocol
        }
      }
      dynamic "overrides" {
        for_each = upstream_config.value.overrides != null ? upstream_config.value.overrides : []
        content {
          balance_outbound_connections = overrides.value.balance_outbound_connections
          connect_timeout_ms           = overrides.value.connect_timeout_ms
          envoy_listener_json          = overrides.value.envoy_listener_json
          dynamic "limits" {
            for_each = overrides.value.limits != null ? overrides.value.limits : []
            content {
              max_concurrent_requests = limits.value.max_concurrent_requests
              max_connections         = limits.value.max_connections
              max_pending_requests    = limits.value.max_pending_requests
            }
          }
          dynamic "mesh_gateway" {
            for_each = overrides.value.mesh_gateway != null ? overrides.value.mesh_gateway : []
            content {
              mode = mesh_gateway.value.mode
            }
          }
          name      = overrides.value.name
          namespace = overrides.value.namespace
          partition = overrides.value.partition
          dynamic "passive_health_check" {
            for_each = overrides.value.passive_health_check != null ? overrides.value.passive_health_check : []
            content {
              base_ejection_time        = passive_health_check.value.base_ejection_time
              enforcing_consecutive_5xx = passive_health_check.value.enforcing_consecutive_5xx
              interval                  = passive_health_check.value.interval
              max_ejection_percent      = passive_health_check.value.max_ejection_percent
              max_failures              = passive_health_check.value.max_failures
            }
          }
          peer     = overrides.value.peer
          protocol = overrides.value.protocol
        }
      }
    }
  }
}

