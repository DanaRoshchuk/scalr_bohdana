resource "random_id" "my_id" {
    quantity    = 20
    byte_length = 4
    prefix      = var.prefix
}
variable "prefix" {
type    = string
default = "mr"
}
