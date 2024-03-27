terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.4.0"
    }
  }
}

provider "random" {
  # Configuration options
}


variable "strings" { default = ["af","bf","cf","df"]}

resource "random_shuffle" "my_shuffle" {
  input = var.strings
  result_count = length(var.strings)
}

output "shuffle_out" {
  value = random_shuffle.my_shuffle.result
  description = "123456789"
  sensitive = false
}
