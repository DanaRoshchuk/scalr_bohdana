terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "2.1.1"
    }
  }
}

provider "null" {
  # Configuration options
}
resource "null_resource" "single" {
  triggers = {
    time = timestamp()
  }
}

output  "time" {
  value = timestamp()
}
