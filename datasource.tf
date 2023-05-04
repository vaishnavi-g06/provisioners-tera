provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZZFSRYKPGY5YZ5CQ"
  secret_key = "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"
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