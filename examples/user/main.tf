terraform {
  required_providers {
    goilerpi = {
      source = "hashicorp.com/edu/goilerpi"
      version = "0.0.1"
    }
  }
}

variable "user_name" {
  type    = string
  default = "Felipe"
}

data "goilerpi_users" "all" {}

output "all_users" {
  value = data.goilerpi_users.all.users
}

output "user" {
  value = {
    for user in data.goilerpi_users.all.users :
    user.name => user
    if user.name == var.user_name
  }
}