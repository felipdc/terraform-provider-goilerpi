terraform {
  required_providers {
    goilerpi = {
      version = "0.0.2"
      source = "hashicorp.com/edu/goilerpi"
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