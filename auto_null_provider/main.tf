terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
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
