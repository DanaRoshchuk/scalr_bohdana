resource "null_resource" "qwertyui" {
  triggers = {
    trigger = "1"
  }
}
output "qwertyui" {
  value = "qwertyui"
}

# on UI add shell valiable ENV_VAR = qwertyui (length should be >6 charactes) and mark as sensitive
