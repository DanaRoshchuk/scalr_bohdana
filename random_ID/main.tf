terraform {
  required_version = "1.1.2"
}

resource "random_id" "my_id" {
    count = 2
    byte_length = 4
    prefix = "hoh_"
}
