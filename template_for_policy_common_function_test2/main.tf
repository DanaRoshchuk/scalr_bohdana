resource "terraform_data" "this" {
  input = var.check
}

variable "check" {
  type = number
  default = 1
}
