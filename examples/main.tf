terraform {
  required_providers {
    goilerpi = {
      source = "hashicorp.com/edu/goilerpi"
      version = "0.0.1"
    }
  }
}

module "psl" {
  source    = "./user"
  user_name = "Felipe"
}

output "psl" {
  value = module.psl.user
}