resource "random_password" "password" {
  count = 
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
variables "pass_count"{
type = string
default = "2"
}

output "password_out" {
  value = random_password.password[*].id
}
