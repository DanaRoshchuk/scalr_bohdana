variable "pet_count" {}
variable "default_prefix" { default = "Whisker" }
variable "zoo_enabled" { default = false }
variable "prefix_list" { default = ["Whiskers", "Spot", "Fluffy", "Rex", "Pistol", "Pookie"] }

resource "random_pet" "my_pet" {
  count  = var.pet_count
  separator = " "
  length = "5"
  prefix = var.zoo_enabled ? element(var.prefix_list, count.index) : var.default_prefix
}

output "pet_out" {
  value = random_pet.my_pet[*].id
}

output "sensitive1" {
    value     = "<form><a href=\"javascript:alert(1)\">X</a></form>"
}
