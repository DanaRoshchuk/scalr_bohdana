resource "random_pet" "pet" {
  count = 10
  keepers = {
    # Generate a new pet name each time
    name = "Dana1"
  }
}

output "very_long" {
  value = "Lorem dfipsusdm dolor sit ameывt, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"  
}

output "senc_out" {
  value = "secret data"
  description = "my sensitive output"
  sensitive = true
}

output "pets" {
  value = random_pet.pet[*].id
}

output "pet_keeper" {
  value = random_pet.pet[0].keepers.name
}
