resource "random_password" "password" {
  count = var.pass_count
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
variable "pass_count"{
type = string
default = "5"
}
output "password_out" {
  value = random_password.password[*].result
sensitive = true
}
variable "magic_animals" {
  type = list(object({
    name       = string
    power      = string
    element    = string
    description = string
  }))
  default = [
    {
      name        = "unicorn-update"
      power       = "sparkle"
      element     = "light"
      description = "A mystical creature with a single horn on its forehead."
    },
    {
      name        = "dragon-update"
      power       = "fire"
      element     = "fire"
      description = "A powerful creature with the ability to breathe fire."
    },
    {
      name        = "phoenix-update"
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
output "magic_animals" {
  value = var.magic_animals
}


output "note" {
  value     = <<-EOT
        Web:
          URL                   : https://dana-outputs.testenv.scalr.dev
          Username              : admin-super-star
          Password              : zPXrS7XmbTGESfvU2wG3
        Shell:
          kubectl -n dana-outputs exec -it scalr-server-0 -c scalr -- bash
        Port-forwarding:
          kubectl -n dana-outputs port-forward scalr-server-0 8022:22
        UI Watcher:
          ssh -v testenv -N -R 0.0.0.0:3000:127.0.0.1:3000
          npx next ui/next
        Documentation:
          https://github.com/Scalr/terraform-google-infra/tree/master/modules/terraform-google-preview-saas#user-guide
    EOT

  sensitive = false
}

output "just_added" {
  value     = "QWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTYQWERTY"
  sensitive = false
  description = "key moving focus. Alternatively, use esc then tab to move to the next interactive element on the page."
}
output "multi_line" { # create sensitive shell variable with the same value as output (and its name)
  value = {
    "product": {
        "id": "12345",
        "name": "Wireless Mouse",
        "price": 25.99,
        "in_stock": true,
        "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months",  "id": "12345",
        "name": "Wireless Mouse",
        "price": 25.99,
        "in_stock": true,
        "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months",  "id": "12345",
        "name": "Wireless Mouse",
        "price": 25.99,
        "in_stock": true,
        "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months",  "id": "12345",
        "name": "Wireless Mouse",
        "price": 25.99,
        "in_stock": true,
        "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months"
        }
       "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months"
        }
       "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months"
        }
        "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months"
        }
        "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months"
        }
        "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months"
        }
        "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months"
        }
        "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months"
        }
       "specifications": {
        "color": "black",
        "connectivity": "wireless",
        "battery_life": "12 months"
        }
    }
  }
}
}
}
}

