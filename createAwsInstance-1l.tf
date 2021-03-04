#terraform playbook which creates Ubuntu Server 20.04 LTS instance on AWS

provider "aws" {
  access_key =  secrets.AWS_ACCESS_KEY_ID
  secret_key =  secrets.AWS_SECRET_ACCESS_KEY
  region     = "eu-central-1"
}

resource "aws_instance" "ansible-master" {
  ami = "ami-0767046d1677be5a0"
  instance_type = "t2.micro"
}