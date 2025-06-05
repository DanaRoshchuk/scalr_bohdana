/*terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "2.0.0"
    }
  }
}

provider "null" {
  # Configuration options
}*/
resource "null_resource" "single" {
count= 11
  triggers= {
    time= timestamp()
  }
}

output  "time" {
  value = timestamp()
}
resource "random_id" "my_id" {
    count = 1
    byte_length = 4
    prefix = var.prefix

}
variable "prefix"{
type = string
default = "mr"
}
output "id_out" {
  value = random_id.my_id[0].id

