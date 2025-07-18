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
output "admin_token" {
value = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MjU0NDAyNjUsImlzcyI6InNjY"
description = ""
}
