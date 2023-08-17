#In this example, the magic_animals_list variable is defined as a list of strings representing magic animals. The resulting list will be [unicorn, dragon, phoenix, griffin].
variable magic_animals_list {
  type    = list(string)
  default = [unicorn, dragon, phoenix, griffin]
}

#In this example, the magic_animals_set variable is defined as a set of strings representing magic animals. The resulting set will be [unicorn, dragon, phoenix, griffin]
variable magic_animals_set {
  type    = set(string)
  default = [unicorn, dragon, phoenix, griffin]
}

#In this example, the magic_animals_map variable is defined as a map of strings representing magic animals and their associated qualities. The resulting map will be { unicorn = sparkle, dragon = fire, phoenix = rebirth, griffin = majesty }.
variable magic_animals_map {
  type    = map(string)
  default = {
    unicorn  = sparkle
    dragon   = fire
    phoenix  = rebirth
    griffin  = majesty
  }
}

#In this example, the magic_animal_object variable is defined as an object with three attributes name, element, and power. The resulting object will be { name = Mermaid, element = Water, power = Enchanting Voice }.
variable magic_animal_object {
  type = object({
    name    = string
    element = string
    power   = string
  })
  default = {
    name    = Mermaid
    element = Water
    power   = Enchanting Voice
  }
}

#In this example, the magic_animal_tuple variable is defined as a tuple that contains three magical animal attributes name, element, and power. The resulting tuple will be [Centaur, Earth, Archery].
variable magic_animal_tuple {
  type    = tuple([string, string, string])
  default = [Centaur, Earth, Archery]
}

output tuple_example {
  value = var.magic_animal_tuple
}

output object_example {
  value = var.magic_animal_object
}

output map_example {
  value = var.magic_animals_map
}

output set_example {
  value = var.magic_animals_set
}

output list_example {
  value = var.magic_animals_list
}
