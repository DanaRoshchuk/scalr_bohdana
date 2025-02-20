resource "null_resource" "qwerty" {
  triggers = {
    trigger = "1"
  }
}
output "qwerty" {
  value = "qwerty"
}
