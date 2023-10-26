variable "vars4"{
  default = "2"
}


variable "private_key_path" {
  type = string
  default = "/home/user/.ssh/terraform_rsa"
}

variable "public_key" {
  type = string
  default = "ssh-rsa terraform_public_key"
}

variable "zones" {
  type = map
  default = {
    "amsterdam" = "nl-ams1"
    "london"    = "uk-lon1"
    "frankfurt" = "de-fra1"
    "helsinki1" = "fi-hel1"
    "helsinki2" = "fi-hel2"
    "chicago"   = "us-chi1"
    "sanjose"   = "us-sjo1"
    "singapore" = "sg-sin1"
  }
}

variable "plans" {
  type = map
  default = {
    "5USD"  = "1xCPU-1GB"
    "10USD" = "1xCPU-2GB"
    "20USD" = "2xCPU-4GB"
  }
}

variable "storage_sizes" {
  type = map
  default = {
    "1xCPU-1GB" = "25"
    "1xCPU-2GB" = "50"
    "2xCPU-4GB" = "80"
  }
}
variable "templates" {
  type = map
  default = {
    "ubuntu18" = "01000000-0000-4000-8000-000030080200"
    "centos7"  = "01000000-0000-4000-8000-000050010300"
    "debian9"  = "01000000-0000-4000-8000-000020040100"
  }
}

variable "set_password" {
  type = bool
  default = false
}

variable "users" {
  type = list
  default = ["root", "user1", "user2"]
}

variable "plan" {
  type = string
  default = "10USD"
}

variable "template" {
  type = string
  default = "ubuntu18"
}







/*
variable "count1" {
 sensitive = true
}

variable "description" {
 sensitive = false
 description = "ssss"
 
}


variable "ssssss" {
 sensitive = false
 #type = bool
 default = "sss"
  
}

variable "win_ami" {
    sensitive = true
#default = "ami-09f2114fecbe506e2"
validation {
     #regex(...) fails if it cannot find a match
    condition     = can(regex("^ami-", var.win_ami))
   error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
 
    }


variable "QWERTYqw" {
 sensitive = false
  
}

variable "QWERTYwwww" {
 sensitive = false
  
}

variable "QWERTYwww" {
 sensitive = false
  
}

variable "QWERTYw" {
 sensitive = false
  
}

variable "QWERTYww" {
 sensitive = false
  
}

variable "QWERTYqqqq" {
 sensitive = false
  
}
variable "Qf3dWERTY" {
 sensitive = false
  
}

variable "QWERTYqqq" {
 sensitive = false
  
}
variable "QWERTYqq" {
 sensitive = false
  
}

variable "QWERTYq" {
 sensitive = false
  
}
variable "QWERTykxsfg54tgeaY" {
 sensitive = false
  
}
variable "" {
 sensitive = false
  
}

variable "QWER" {
 sensitive = false
  
}
variable "QWERT" {
 sensitive = false
  
}
variable "QWERY" {
 sensitive = false
  
}
variable "QWcvbncvbERTY" {
 sensitive = false
  
}
variable "QWEcvbnjmcvbmnRTY" {
 sensitive = false
  
}

variable "QWEcgfjnvghRTY" {
 sensitive = false
  
}

variable "QWERTcfddd333Y" {
 sensitive = false
  
}
variable "QWEcghnjdhgfvxnRTY" {
 sensitive = false
  
}
variable "QWERxfghdfgyjTY" {
 sensitive = false
  
}
variable "QWxdzstfrhyERTY" {
 sensitive = false
  
}
variable "QWxfghsERTY" {
 sensitive = false
  
}
variable "QWxcfvghxfERTY" {
 sensitive = false
  
}
variable "QWcfgjhxERTY" {
 sensitive = false
  
}
variable "QWERcvhgmjcnbTY" {
 sensitive = false
  
}



variable "tags" {
  type = map
  default = {
    test-env-owner = "k.kotov"
  }
}


variable "instance_type1" {
 sensitive = true
  type = string
  #default = "t2.nano"
}

variable "network" {
  type = string
  default = "vpc-596aa03e"
 }

variable "password1" {
 sensitive = true
 #type = list
  description = "Value 2 Optional"
  default     = "1234567890"
}

variable "vars3" {
  description = "Value 2 Optional"
  type        = string
  default     = "null"
}


variable "subnet" {
  type = string
    default = "subnet-7e3fd71a"
  }

*/
