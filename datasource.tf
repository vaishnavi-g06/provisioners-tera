provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA"
  secret_key = "rq"
}
data "aws_ami" "ins-id" {
    most_recent = true
    owners = [ "amazon" ]
   filter {
     name = "name"
     values = [ "amzn2-ami-hvm*" ]
   }
  
}
resource "aws_instance" "datasource-ins" {
  ami = data.aws_ami.ins-id.id
  instance_type = "t2.micro"
}
