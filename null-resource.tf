#  resource "aws_instance" "remote-ins" {
#    ami = "ami-0889a44b331db0194"
# instance_type = "t2.micro"
#  depends_on = [ null_resource.curl-aws ]

#  }
# resource "null_resource" "curl-aws" {
#   provisioner "local-exec" {
#   command = "curl https://google.com"
#   }
# }



resource "aws_eip" "null-eip" {
  vpc=true
  count =1
}
resource "null_resource" "null-eip" {
  triggers = {
    latest_ips=join(",",aws_eip.null-eip[*].public_ip)

  }
  provisioner "local-exec" {
    command = "echo ips are ${null_resource.null-eip.triggers.latest_ips}>> eip-sample.txt"
    
  }
}