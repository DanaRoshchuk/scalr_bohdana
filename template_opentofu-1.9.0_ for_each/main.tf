

terraform{
backend "remote" {
  hostname = "bohdana10.dana-workload.testenv.scalr.dev"
  organization = "Environment-A"
workspaces {
      name = "clitest"
    }
}
/*terraform {
  cloud {
    hostname = "bohdana10.dana-workload.testenv.scalr.dev"
    organization = "Environment-A"

    workspaces {
      name = "clitest"
    }
  }
}*/
}
resource "random_pet" "pet" {
  keepers = {
    # Generate a new pet name each time
    timestamp = timestamp()
  }
}

output "very_long" {
  value = "Lorem dfipsusdm dolor sit am"  
}

output "senc_out" {
  value = "secret data"
  description = "my sensitive output"
  sensitive = true
}

output "env" {
  value = var.environment
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}



locals {
  config = yamldecode(file("${path.module}/${var.environment}.yaml"))
  regions = local.config.regions
}

provider "aws" {
  alias = "by_region"
  region = each.key
}

resource "aws_s3_bucket" "example" {
  count = 1
  bucket = "user-tf-test-s3-bucket-${count.index}"

  tags = {
    Name        = "My bucket-upd"
    Environment = "var.environment"
  }
}
