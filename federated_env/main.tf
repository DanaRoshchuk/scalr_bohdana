variable "env" {
  default = "env1"
}

variable "ws" {
  default = "WS1111"
}


data "terraform_remote_state" "state" {
  backend = "remote"

  config = {
    hostname = "bohdana10.dana-master.testenv.scalr.dev"
    organization = var.env
    workspaces = {
      name = var.ws
    }
  }
}


output "time" {
    value = data.terraform_remote_state.state.outputs.id_out
}
