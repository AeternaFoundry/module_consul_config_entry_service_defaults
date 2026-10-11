variable "config_entry_service_defaults" {
  description = <<EOT
Map of config_entry_service_defaults, attributes below
Required:
    - name
    - protocol
    - expose (block):
        - checks (optional)
        - paths (optional, block):
            - listener_port (optional)
            - local_path_port (optional)
            - path (optional)
            - protocol (optional)
Optional:
    - balance_inbound_connections
    - external_sni
    - local_connect_timeout_ms
    - local_request_timeout_ms
    - max_inbound_connections
    - meta
    - mode
    - mutual_tls_mode
    - namespace
    - partition
    - destination (block):
        - addresses (required)
        - port (required)
    - envoy_extensions (block):
        - arguments (optional)
        - consul_version (optional)
        - envoy_version (optional)
        - name (optional)
        - required (optional)
    - mesh_gateway (block):
        - mode (required)
    - transparent_proxy (block):
        - dialed_directly (required)
        - outbound_listener_port (required)
    - upstream_config (block):
        - defaults (optional, block):
            - balance_outbound_connections (optional)
            - connect_timeout_ms (optional)
            - limits (optional, block):
                - max_concurrent_requests (optional)
                - max_connections (optional)
                - max_pending_requests (optional)
            - mesh_gateway (optional, block):
                - mode (optional)
            - passive_health_check (optional, block):
                - base_ejection_time (optional)
                - enforcing_consecutive_5xx (optional)
                - interval (optional)
                - max_ejection_percent (optional)
                - max_failures (optional)
            - protocol (optional)
        - overrides (optional, block):
            - balance_outbound_connections (optional)
            - connect_timeout_ms (optional)
            - envoy_listener_json (optional)
            - limits (optional, block):
                - max_concurrent_requests (optional)
                - max_connections (optional)
                - max_pending_requests (optional)
            - mesh_gateway (optional, block):
                - mode (optional)
            - name (optional)
            - namespace (optional)
            - partition (optional)
            - passive_health_check (optional, block):
                - base_ejection_time (optional)
                - enforcing_consecutive_5xx (optional)
                - interval (optional)
                - max_ejection_percent (optional)
                - max_failures (optional)
            - peer (optional)
            - protocol (optional)
EOT

  type = map(object({
    name                        = string
    protocol                    = string
    balance_inbound_connections = optional(string)
    external_sni                = optional(string)
    local_connect_timeout_ms    = optional(number)
    local_request_timeout_ms    = optional(number)
    max_inbound_connections     = optional(number)
    meta                        = optional(map(string))
    mode                        = optional(string)
    mutual_tls_mode             = optional(string)
    namespace                   = optional(string)
    partition                   = optional(string)
    expose = list(object({
      checks = optional(bool)
      paths = optional(list(object({
        listener_port   = optional(number)
        local_path_port = optional(number)
        path            = optional(string)
        protocol        = optional(string)
      })))
    }))
    destination = optional(list(object({
      addresses = list(string)
      port      = number
    })))
    envoy_extensions = optional(list(object({
      arguments      = optional(map(string))
      consul_version = optional(string)
      envoy_version  = optional(string)
      name           = optional(string)
      required       = optional(bool)
    })))
    mesh_gateway = optional(list(object({
      mode = string
    })))
    transparent_proxy = optional(list(object({
      dialed_directly        = bool
      outbound_listener_port = number
    })))
    upstream_config = optional(list(object({
      defaults = optional(list(object({
        balance_outbound_connections = optional(string)
        connect_timeout_ms           = optional(number)
        limits = optional(list(object({
          max_concurrent_requests = optional(number)
          max_connections         = optional(number)
          max_pending_requests    = optional(number)
        })))
        mesh_gateway = optional(list(object({
          mode = optional(string)
        })))
        passive_health_check = optional(list(object({
          base_ejection_time        = optional(string)
          enforcing_consecutive_5xx = optional(number)
          interval                  = optional(string)
          max_ejection_percent      = optional(number)
          max_failures              = optional(number)
        })))
        protocol = optional(string)
      })))
      overrides = optional(list(object({
        balance_outbound_connections = optional(string)
        connect_timeout_ms           = optional(number)
        envoy_listener_json          = optional(string)
        limits = optional(list(object({
          max_concurrent_requests = optional(number)
          max_connections         = optional(number)
          max_pending_requests    = optional(number)
        })))
        mesh_gateway = optional(list(object({
          mode = optional(string)
        })))
        name      = optional(string)
        namespace = optional(string)
        partition = optional(string)
        passive_health_check = optional(list(object({
          base_ejection_time        = optional(string)
          enforcing_consecutive_5xx = optional(number)
          interval                  = optional(string)
          max_ejection_percent      = optional(number)
          max_failures              = optional(number)
        })))
        peer     = optional(string)
        protocol = optional(string)
      })))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.config_entry_service_defaults : (
        length(v.expose) >= 1
      )
    ])
    error_message = "Each expose list must contain at least 1 items"
  }
}

