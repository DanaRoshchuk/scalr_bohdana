variable "env" {
  default = "tfenv1"
}

variable "ws" {
  default = "workspace-1"
}


data "terraform_remote_state" "state" {
  backend = "remote"

  config = {
    hostname = "mainiacp.federated-demo.testenv.scalr.dev"
    organization = var.env
    workspaces = {
      name = var.ws
    }
  }
}


output "foo_ip" {
    value = data.terraform_remote_state.state.outputs.scalr_ip
}
