variable "strings" { default = ["a","b","c","d"]}

resource "random_shuffle" "my_shuffle" {
  input = var.strings
  result_count = length(var.strings)
}

output "shuffle_out" {
  value = random_shuffle.my_shuffle.result
}
