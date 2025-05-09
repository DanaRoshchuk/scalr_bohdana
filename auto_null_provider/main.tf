terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.0"
    }
  }
}

resource "null_resource" "single" {
count= 11
  triggers= {
    time= timestamp()
  }
}

output  "time" {
  value = timestamp()
}
