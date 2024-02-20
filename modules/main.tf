provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}


resource "aws_key_pair" "example" {
  key_name   = "${var.tags.Name}-kp"
  public_key = file("/root/.ssh/id_rsa.pub")
}

resource "aws_instance" "example" {
  ami           = local.ami
  instance_type = var.instance_type
  tags = local.final_tags
  key_name = aws_key_pair.example.key_name
}
