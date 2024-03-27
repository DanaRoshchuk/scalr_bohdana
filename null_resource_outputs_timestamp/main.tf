resource "null_resource" "single" {
  version = "3.1.1"
  triggers = {
    time = timestamp()
  }
}

output  "time" {
  value = timestamp()
}
