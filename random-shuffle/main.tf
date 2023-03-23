variable "strings" { default = ["a","b","c","e"]}

resource "random_shuffle" "my_shuffle" {
  input = null
  result_count = length(var.strings)
}

output "shuffle_out" {
  value = random_shuffle.my_shuffle.result
}
