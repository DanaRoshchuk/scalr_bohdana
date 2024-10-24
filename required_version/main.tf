terraform {
  required_version = "> 1.5.0"
}

resource "random_integer" "ran" {
  count = var.quantity
  min = 100
  max = 400
  keepers = {
    run_id = var.run_id
  }
}
resource "random_pet" "pet" {
 prefix = var.prefix
 separator = "."
 length = 1
 }
 resource "null_resource" "env_vars" {
  #count = 5
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
 }
}


output "sensitive1" {
    value     = "<form><a href=\"javascript:alert(1)\">X</a></form>"
}
