terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.0"
    }
  }
}

resource "null_resource" "single1" {
count= 2
  triggers= {
    time= timestamp()
  }
}

output  "time" {
  value = timestamp()
}
