module "myserver" {
  source = "/root/terraform_modules/ubuntu2204"
  instance_type = "t2.small"
  tags = { Name = "nilay-module-vm" }
}

output "MyModuleOutput" {
  value = module.myserver.MyPublicIP
}


###########################################################################

module "myserver-dev" {
  source = "/root/terraform_modules/ubuntu2204"
  instance_type = "t2.nano"
  env = "dev"
  tags = { Name = "nilay-module-dev" }
}
 
module "myserver-prod" {
  source = "/root/terraform_modules/ubuntu2204"
  instance_type = "t2.micro"
  env = "prod"
  tags = { Name = "nilay-module-prod" }
}
 
output "MyModuleOutput1" {
  value = module.myserver-dev.MyPublicIP
}
 
output "MyModuleOutput2" {
  value = module.myserver-prod.MyPublicIP
}
