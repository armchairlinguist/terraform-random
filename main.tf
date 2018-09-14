resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 16
}

output "random" {
  value = "${random_id.random.hex}"
}

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "set | grep TF_LOG"
  }
}

