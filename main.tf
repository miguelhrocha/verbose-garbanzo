resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "echo hello world!!"
  }
}

resource "null_resource" "hello_world_part_2" {
  provisioner "local-exec" {
    command = "echo ${var.greetings}!"
  }
}

resource "null_resource" "dont_hack_me" {
  provisioner "local-exec" {
    command = "echo My password is: ${var.password}"
  }
}

module "module-1" {
  source  = "miguelhrocha/helloworld/aws"
  version = "1.0.0"
  # insert required variables here
  password = "ZAQ!xsw2"
}

module "helloworld-2" {
  source  = "tfcdev-15922928.eu.ngrok.io/hashicorp/helloworld-2/aws"
  version = "1.0.0"
  password = "ZAQ!xsw2"
  # insert required variables here
}

resource "null_resource" "previous" {}
