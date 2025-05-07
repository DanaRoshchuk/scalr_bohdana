resource "random_uuid" "test" {
count = 10
}
output "uuid_out" {
  value = random_uuid.test[*].result
sensitive = true
}
