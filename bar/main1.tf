resource "random_uuid" "test" {
count = 11
}
output "uuid_out" {
  value = random_uuid.test[*].result
sensitive = false
}
