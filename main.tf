# write a script to lauch resources on the cloud
# create ec2 instance on aws
# sentax {
#         key = value }
# download dependencies from aws

provider "aws" {

# which part of aws we would like to launch recource in
	region = "eu-west-1"


}
# What type of server with what sort of functionality
# launch instance
resource "aws_instance" "app_instance" {
	ami = "ami-0b47105e3d7fc023e"
	app_instance = "t2.micro"
	associate_public_ip_address = true
	tags = {
		Name = "eng130_jorge_terraform_app"
	}
	

}

# add resource
# ami
# instance type
# do we need plublic ip or not
# name the server
