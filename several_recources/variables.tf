variable "quantity" {
	default = 1
	type = string
}
variable "prefix" {
	default = ["Mr", "Mrs", "Sir"]
	type = list
}
variable "run_id" {
  default = "run_id_2"
}
variable "strings" { 
default = ["a","b","c","d"]
type = list(string)
}
