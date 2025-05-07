resource "random_pet" "pet" {
  count = 5000
  keepers = {
    # Generate a new pet name each time
    name = "Dana1"
  }
}
