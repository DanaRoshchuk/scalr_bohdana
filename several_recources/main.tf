terraform {
  required_version = ">1.2.0"
}
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
 resource "null_resource" "env_vars" {
  #count = 5
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
 }
}
/*{
  triggers = {
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "env"
  }
}*/
resource "random_shuffle" "my_shuffle" {
  input = var.strings
  result_count = length(var.strings)
}
resource "random_id" "my_id" {
    count = 1
    byte_length = 10
    prefix = "Yoy"
}
variable "quantity" {
  type    = number
}

variable "run_id" {
  default = "run_2"
}
vari
variable "prefix" {
  type    = string
}
variable "string" {
 type = list(string)
}


/*variable "magic_animals" {
  type = list(object({
    name       = string
    power      = string
    element    = string
    description = string
  }))
  default = [
    {
      name        = "unicorn"
      power       = "sparkle"
      element     = "light"
      description = "A mystical creature with a single horn on its forehead."
    },
    {
      name        = "dragon"
      power       = "fire"
      element     = "fire"
      description = "A powerful creature with the ability to breathe fire."
    },
    {
      name        = "phoenix"
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
*/
