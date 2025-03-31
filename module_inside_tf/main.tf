provider {
name = "scalr.dana"
hostname = "bohdana10.dana-visual.testenv.scalr.dev/"
token = var.token
}

module “myorg” {
source = “./data_for_folder_module_inside”
providers = "scalr.dana"
}

variable “token” {}
