provider "aws" {
  access_key =  secrets.AWS_ACCESS_KEY_ID
  secret_key =  secrets.AWS_SECRET_ACCESS_KEY
  region     = "eu-central-1"
}


resource "aws_instance" "ansible-master" {
  ami = "ami-0767046d1677be5a0"
  instance_type = "t2.micro"
}


resource "aws_instance" "ansible-slaves" {
  count = 2                                   #number of objects to create
  ami   = "ami-02f9ea74050d6f812"
  instance_type = "t2.micro"
}