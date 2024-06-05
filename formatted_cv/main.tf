


terraform {
  backend "remote" {
    hostname     = "bohdana10.dana-master.testenv.scalr.dev"
    organization = "env-v0od10q25faujv1nt"
    token        = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzY2Fscjp1c2VyIiwianRpIjoiYXQtdjBvZDExbGU0bzQxbDIwb2YifQ.K5SIzBSqe7OA8eGA24GVgOxgjXox2ZDXa2I_lvXQIAU"

    workspaces {
      name = "cli"
    }
  }
}


resource "random_integer" "ran" {
  count = var.quantity
  min   = 100
  max   = 400
  keepers = {
    run_id = var.run_id
  }
}
resource "random_pet" "pet" {
  prefix    = var.prefix
  separator = "."
  length    = 1
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
/*{
  triggers = {
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "env"
  }
}*/
resource "random_shuffle" "my_shuffle" {
  input        = var.strings
  result_count = length(var.strings)
}
resource "random_id" "my_id" {
  count       = 1
  byte_length = 10
  prefix      = "Yoy"
}
variable "quantity" {
  default = 1
  type    = string
}
variable "prefix" {
  default = "Mr"
  type    = string
}
variable "run_id" {
  default = "run_id_1"
}
variable "strings" {
  default = ["aa", "bb", "cc", "dd"]
  types   = list(string)
}
