resource "random_integer" "ran" {
  count = var.quantity
  min = 100
  max = 300
  keepers = {
    run_id = var.run_id
  }
}
variable "quantity" {
  type    = number
}

variable "run_id" {
  type    = string
}
