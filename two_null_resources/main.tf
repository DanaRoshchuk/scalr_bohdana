terraform {
cloud {
hostname = "bohdana10.main.scalr.dev"
organization = "reg209"
workspaces {
name = "two_null_resources"
}
}
}
resource "null_resource" "single" {
count= 10
  triggers= {
    time= timestamp()
  }
}
resource "random_pet" "pet" {
count = 10
 prefix = var.prefix
 separator = "."
 length = 1
 }
variable "prefix" {
	default = "Sr"
	type = string
}
