terraform {
  required_version = "1.6.0"
}

resource "random_id" "my_id" {
    count = 1
    byte_length = 4
    prefix = "hoh_"
}
