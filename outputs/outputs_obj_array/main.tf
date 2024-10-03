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
