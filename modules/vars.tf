variable "region" {
  default = "ap-south-1"
}

variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}

locals {
  ami = "ami-03f4878755434977f"
  mandate_tags = { Org = "tavisca" }
  final_tags = merge(local.mandate_tags, var.tags)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "tags" {
  default = { Name = "nilay-vm" }
}

output "final_tags_out" {
  value = local.final_tags
}
