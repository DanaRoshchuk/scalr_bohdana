variable "env" {
  default = "release-198"
}

variable "ws" {
  default = "several"
}


data "terraform_remote_state" "state" {
  backend = "remote"

  config = {
    hostname = "bohdana10.main.scalr.dev"
    organization = var.env
    workspaces = {
      name = var.ws
    }
  }
}


output "time" {
    value = data.terraform_remote_state.state.outputs.time
}
