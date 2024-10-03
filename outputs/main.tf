resource "random_password" "password" {
  count = var.pass_count
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
variable "pass_count"{
type = string
default = "5"
}

output "password_out" {
  value = random_password.password[*].result
sensitive = true
}


#In this example, the magic_animals_list variable is defined as a list of strings representing magic animals. The resulting list will be ["unicorn", "dragon", "phoenix", "griffin"].
variable "magic_animals_list" {
  type    = list(string)
  default = ["unicorn", "dragon", "phoenix", "griffin", "thestral", "dog"]
}
#In this example, the magic_animals variable is a list of objects. Each object represents a magic animal and contains attributes such as name, power, element, and description. The default value provides a list of four magic animals with their respective attributes.
variable "magic_animals" {
  type = list(object({
    name       = string
    power      = string
    element    = string
    description = string
  }))
  default = [
    {
      name        = "unicorn-update"
      power       = "sparkle"
      element     = "light"
      description = "A mystical creature with a single horn on its forehead."
    },
    {
      name        = "dragon-update"
      power       = "fire"
      element     = "fire"
      description = "A powerful creature with the ability to breathe fire."
    },
    {
      name        = "phoenix-update"
      power       = "rebirth"
      element     = "fire"
      description = "A legendary bird that is reborn from its own ashes."
    },
    {
      name        = "griffin"
      power       = "majesty"
      element     = "air"
      description = "A majestic creature with the body of a lion and the head of an eagle."
    }
  ]
}
#In this example, the magic_animals_set variable is defined as a set of strings representing magic animals. The resulting set will be ["unicorn", "dragon", "phoenix", "griffin"]
variable "magic_animals_set" {
  type    = set(string)
  sensitive = true
  default = ["unicorn", "dragon", "phoenix", "griffin", "black cat"]
}
#In this example, the magic_animals_map variable is defined as a map of strings representing magic animals and their associated qualities. The resulting map will be { "unicorn" = "sparkle", "dragon" = "fire", "phoenix" = "rebirth", "griffin" = "majesty" }.
variable "magic_animals_map" {
  type    = map(string)
  default = {
    unicorn  = "none-update"
    dragon   = "sleep"
    phoenix  = "eat"
    griffin  = "none"
  }
}
#In this example, the magic_animal_object variable is defined as an object with three attributes: name, element, and power. The resulting object will be { "name" = "Mermaid", "element" = "Water", "power" = "Enchanting Voice" }.
variable "magic_animal_object" {
  type = object({
    name    = string
    element = string
    power   = string
  })
  default = {
    name    = "MODULE VERSION Small Mermaid"
    element = "Water-update"
    power   = "Enchanting Voice"
  }
}
#In this example, the magic_animal_tuple variable is defined as a tuple that contains three magical animal attributes: name, element, and power. The resulting tuple will be ["Centaur", "Earth", "Archery"].
variable "magic_animal_tuple" {
  type    = tuple([string, string, string])
  default = ["Usual Centaur", "Big Earth", "Non-Archery-Dry-check-on-222staging"]
}
output "tuple_example" {
  value = var.magic_animal_tuple
}
output "object_example" {
  value = var.magic_animal_object
}
output "module_new_map_example" {
  value = var.magic_animals_map
}
output "set_example" {
  value = var.magic_animals_set
sensitive = true
}
output "list_example" {
  value = var.magic_animals_list
}
output "list_example2" {
  value = var.magic_animals_list
}
output "magic_animals" {
  value = var.magic_animals
}


resource "random_uuid" "test" {
count = 11
}
output "uuid_out" {
  value = random_uuid.test[*].result
sensitive = false
}

variable "run_id" {
  #default= "run_id_11"
}

variable "sleep_time" {
  default= 1000
}

resource "random_integer" "timeout" {
  min= 50
  max= 100

  keepers = {
    run_id = var.run_id
  }
}



resource "null_resource" "env_vars" {
 count = 1
  triggers = {
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "env"
  }
}

output "very_long" {
  value = "Webhook. Lorem dfipsusdm dolor sit ameывt, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"  
}

output "senc_out" {
  value = "secret data"
  description = "my sensitive output"
  sensitive = true
}

output "output_run_id" {
  value = var.run_id
}
