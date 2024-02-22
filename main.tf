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
  
module "curated-module" {
  source  = "briancain/helloworld/aws"
  version = "2020.4.21"
  # insert required variables here
  password = "ZAQ!xsw2"
}

resource "null_resource" "previous" {}

resource "aws_s3_bucket" "rum" {
  count  = var.enable_aws ? 1 : 0
  bucket = "rum-miguel-bucket"

  tags = {
    Name        = "RUM"
    Environment = "Dev"
  }
}
