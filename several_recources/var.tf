variable "quantity" {
	default = 2
	type = string
}
variable "prefix" {
	default = "Mr"
	type = string
}
variable "run_id" {
  default = "run_id_2"
}
variable "strings" { 
default = ["a","b","c","d"]
type = list(string)
}
