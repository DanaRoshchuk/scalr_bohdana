*variable "quantity" {
	default = 11
	type = string
}
variable "prefix" {
	default = "Sr"
	type = string
}
variable "run_id" {
  default = "run_id_11"
}
variable "strings" { 
  default = ["q","w","e","r"]
type = list(string)
}
