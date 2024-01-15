variable "failover_replica_configuration" {
  description = "The replica configuration for the failover replica instance. In order to create a failover instance, need to specify this argument."
  type = object({
    connect_retry_interval    = number
    dump_file_path            = string
    ca_certificate            = string
    client_certificate        = string
    client_key                = string
    failover_target           = bool
    master_heartbeat_period   = number
    password                  = string
    ssl_cipher                = string
    username                  = string
    verify_server_certificate = bool
  })
  default = {
    connect_retry_interval    = null
    dump_file_path            = null
    ca_certificate            = null
    client_certificate        = null
    client_key                = null
    failover_target           = null
    master_heartbeat_period   = null
    password                  = null
    ssl_cipher                = null
    username                  = null
    verify_server_certificate = null
  }
}
