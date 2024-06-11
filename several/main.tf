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
