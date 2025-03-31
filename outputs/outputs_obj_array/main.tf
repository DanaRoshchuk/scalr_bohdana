resource "random_uuid" "test" {
  count = 2
}
output "uuid_array" {
  value = concat(random_uuid.test[*].result, ["lorem"])
}
output "uuid_obj1" {
  value = { key0: random_uuid.test[0].result, key1: random_uuid.test[1].result, key2: "lorem" }
}

output "uuid_obj2" {
  value = { key0: random_uuid.test[0].result, key1: random_uuid.test[1].result, key2: "lorem", key3: { key0: random_uuid.test[0].result, key1: random_uuid.test[1].result, key2: "lorem" } }
}


resource "random_uuid" "test2" {
count = 5
}
output "uuid_out" {
  value = random_uuid.test2[*].result
sensitive = false
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
