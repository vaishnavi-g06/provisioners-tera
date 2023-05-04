# resource "aws_instance" "remote-ins" {
#   ami = "ami-0889a44b331db0194"
#   instance_type = "t2.micro"
#   provisioner "local-exec" {
#     command = "echo ${aws_instance.remote-ins.private_ip} >> private_ips.txt"
#   }
# }