module "myserver" {
  source = "/root/terraform_modules/ubuntu2204"
  instance_type = "t2.small"
  tags = { Name = "nilay-module-vm" }
}

output "MyModuleOutput" {
  value = module.myserver.MyPublicIP
}
