resource "null_resource" "qwertyui" {
  triggers = {
    trigger = "1"
  }
}
output "qwertyui" {
  value = "qwertyui"
}
