/*terraform {
  required_version = "1.7.0"
}*/
terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "2.1.1"
        }
    }
}
resource "scalr_variable" "var_env1-update1" {
  count = 1
  key            = "var-${count.index}"
  value          = "TRACE"
  category       = "terraform"
  environment_id = "env-v0opfcds26k27flp5"
}
resource "random_integer" "ran" {
  count = var.quantity
  min =210
  max = 400
  keepers = {
    run_id = var.run_id
  }
}
resource "random_pet" "pet" {
count = 10
 prefix = var.prefix
 separator = "."
 length = 1
 }
 resource "null_resource" "env_vars" {
  count = 2
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
 }
}

resource "null_resource" "single" {
count= 10
  triggers= {
    time= timestamp()
  }
}

output  "time" {
  value = timestamp()
}
resource "null_resource" "single1" {
count= 1
  triggers= {
    time= timestamp()
  }
}


output "sensitive1" {
    value     = "<form><a href=\"javascript:alert(1)\">X</a></form>"
}
/*data "terraform_remote_state" "for_output" {
  backend = "remote"

  config = {
    organization = "env-v0ohnt3l23v6v32bd"
    hostname = "bohdana10.dana-runner.testenv.scalr.dev"
    workspaces = {
      name = "sev"
    }
  }
}

output "several" {
    value     = data.terraform_remote_state.for_output.outputs.sensitive1
}*/









/*{
  triggers = {
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "env"
  }
}*/
resource "random_shuffle" "my_shuffle1" {
  input = var.strings
  result_count = length(var.strings)
}
resource "random_id" "my_id" {
    count = 10
    byte_length = 10
    prefix = "Yo"
}
/*variable "quantity" {
  type    = number
}

variable "run_id" {
  type = string
  default = ""
}
resource "random_id" "my_id2" {
    count = 2
    byte_length = 10
    prefix = "MR"
}

variable "prefix" {
  type    = string
}
variable "strings" {
 type = list(string)
}*/


/*variable "magic_animals" {
  type = list(object({
    name       = string
    power      = string
    element    = string
    description = string
  }))
  default = [
    {
      name        = "unicorn"
      power       = "sparkle"
      element     = "light"
      description = "A mystical creature with a single horn on its forehead."
    },
    {
      name        = "dragon"
      power       = "fire"
      element     = "fire"
      description = "A powerful creature with the ability to breathe fire."
    },
    {
      name        = "phoenix"
      power       = "rebirth"
      element     = "fire"
      description = "A legendary bird that is reborn from its own ashes."
    },
    {
      name        = "griffin"
      power       = "majesty"
      element     = "air"
      description = "A majestic creature with the body of a lion and the head of an eagle."
    }
  ]
}
*/
