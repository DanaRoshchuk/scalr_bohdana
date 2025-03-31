terraform {
required_version = "> 1.2.0, < 1.4.0" #or any other versions with multiple constraints
}
resource "random_password" "password" {
  count = var.pass_count
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
variable "pass_count"{
type = string
default = "5"
}

output "password_out" {
  value = random_password.password[*].result
sensitive = true
}