terraform {
  required_version = ">1.5.0"
}

resource "random_id" "my_id" {
    count = 2
    byte_length = 4
    prefix = var.prefix

}
variable "prefix"{
type = string
default = "mr"
}
