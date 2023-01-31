terraform {
  required_providers {
    goilerpi = {
      version = "0.0.2"
      source = "hashicorp.com/edu/goilerpi"
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