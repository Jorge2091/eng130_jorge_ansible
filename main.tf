# write a script to lauch resources on the cloud
# create ec2 instance on aws
# sentax {
#         key = value }
# download dependencies from aws

provider "aws" {

# which part of aws we would like to launch recource in
	region = "eu-west-1"
	# shared_config_files = ["~/.ssh/eng130.pem"]
	

}
# What type of server with what sort of functionality
# launch instance
resource "aws_key_pair" "deployer" {
	key_name   = "testingdd"
	
	public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCv4jF/xFMKNn22YvwKNx89PR/zGTILySpo6RN3cYA6ExvXjgW6UsRdwc7Q2qon+qk5tRCZzaobTHh3R19YTKL+bgsnLmOz5eTv1BrMHRuglCPTe7S5gFqS1lEl8BtPKbv+uGoFreRI3UIE2/QVwd+hqA+vdzZXQ45xiitnKkfAbggw012Mvo4qMWV0KzeaJitEF5mx1J9/74nWDE8RKweRVZy4AuDmQ9jXGPdf+omdTxey7oe9eNessKiDJSvIwZSS0MvVBvEb9Z4D2H1BIPIeSMNXHU6AmY4kYJcODtBrqY/GLra2OLgRoAYMuWbe1/MkfTLTcErRe+2gpo2fQ1k5DCZdHwr/xubZxdX2O9i/uWqfow2uyE7K9ivc/psCyQqHEnyt83TS6Qgt277JX6GUNjz7JW/iNB5YIcsjDxrtrZlC/ayh2Eh5TRMA39gKKdlPIgLLkHCq5PanXQV8i7pK5x6yvYYCNXg8PX1Ux5MTaew3cxXF0RqNWgrqFOQXuVEB5WXb5D+QWCu/f9VNj+TfKsJAnVXxwSCWud87hIlkEUIIg+S/bujjwhPVpdDOKMhZmtXbEEc/Yn9+pImbCNTSpmjnWxOlJvuo4bUdBGUAvVSQ8WwQfq+B97LoEZor2Aq3lVTpnbaU6Z9nayxqg3JxzDLKmlXUuvb4Pp1/C/94Ew== jorge@DESKTOP-IVT90IK"
}


resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "eng130-jorge-vpc-terraform"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.8.0/24"
  tags = {
    Name = "eng130-jorge-sub-public-terraform"
  }
}

resource "aws_instance" "app_instance" {
	ami = var.webapp_ami # "ami-0b47105e3d7fc023e"
	instance_type = "t2.micro"
	associate_public_ip_address = true
	key_name = "testingdd"
	tags = {
		Name = "eng130_jorge_terraform_app"
	}
}

# vpc
# subnet
# internet gateway
# route table
# 
