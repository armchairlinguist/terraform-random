resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random1" {
  value = "${random_id.random.hex}"
}

variable "billing_code" {}
