terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "2.3.0"
    }
  }
}
variable my_count {
  default = 600
}
resource "random_string" "random_string" {
    count = 10
    length  = 4
    special = false
    upper   = true
}
data "vault_generic_secret" "default_terraform_version" {
   path = "kv/tfe/repl"
}
variable "vault_address" {
  default = "https://vault.infosec.ic1.statefarm:8200"
}
variable "vault_namespace" {
  default = "PCAT"
}
provider "vault" {
    address   = 1212
    namespace = 1212
    skip_child_token = true
    token = "dummy"
}
