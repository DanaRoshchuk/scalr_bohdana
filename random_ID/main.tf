resource "random_id" "my_id" {
    count = 3
    byte_length = 5
    prefix = "hoh_"
}
