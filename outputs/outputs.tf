
/*output "outnotsecret-mmmdmdmmmfmbnkjvdfbhgvhdbvdbfshvldfbzvlhdbscvdafsz" {
  value     = "xyz"
  sensitive = false
}

# mod/main.tf, our module containing a sensitive output

output "a" {
  value     = "our module containing a sensitive outputour module containing a sensitive outputour module containing a sensitive outputour module containing a sensitive output"
  }

/*output "out5" {
  value     = "xyz"
  sensitive = true
}
*/

# mod/main.tf, our module containing a sensitive output

/*output "aq" {
  value     = "secret"
  sensitive = true
}
output "outq" {
  value     = "xyzzzzzzzzzzzz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "aw" {
  value     = "secret"
  sensitive = true
}
output "outw" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ae" {
  value     = "not-secretnot-secretnot-secretnot-secretnot-secretnot-secret"

}
output "oute" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ra" {
  value     = "secret"
  sensitive = true
}
output "rout" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ar" {
  value     = "secret"
  sensitive = true
}
output "outr" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "at" {
  value     = "secret"
  sensitive = true
}
output "outt" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ta" {
  value     = "secret"
  sensitive = true
}
output "tout" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ya" {
  value     = "secret"
  sensitive = true
}
output "yout" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ay" {
  value     = "secret"
  sensitive = true
}
output "outy" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ua" {
  value     = "secret"
  sensitive = true
}
output "uout" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "au" {
  value     = "secret"
  sensitive = true
}
output "outu" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ia" {
  value     = "secret"
  sensitive = true
}
output "iout" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ai" {
  value     = "secret"
  sensitive = true
}
output "outi" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ao" {
  value     = "secret"
  sensitive = true
}
output "outo" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "oa" {
  value     = "secret"
  sensitive = true
}
output "oout" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "pa" {
  value     = "secret"
  sensitive = true
}
output "pout" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "ap" {
  value     = "secret"
  sensitive = true
}
output "outp" {
  value     = "xyz"
  sensitive = true
}*/

# mod/main.tf, our module containing a sensitive output

/*output "aa1" {
  value     = "secret"
  sensitive = true
}
output "aout" {
  value     = "xyz"
  sensitive = true
}*/


# mod/main.tf, our module containing a sensitive output

output "alj" {
  value     = "secret"
  sensitive = true
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
  value     = "secret"
  sensitive = false
  description = "key moving focus. Alternatively, use esc then tab to move to the next interactive element on the page."
}
