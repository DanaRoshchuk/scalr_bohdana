variable "env" {
  default = "Environment-a"
}

variable "ws" {
  default = "random_id"
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


output "id" {
    value = data.terraform_remote_state.state.outputs.id_out
}
