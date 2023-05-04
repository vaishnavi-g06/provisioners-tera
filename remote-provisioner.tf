

# resource "aws_instance" "remote-ins" {
#   ami = "ami-0889a44b331db0194"
#   instance_type = "t2.micro"
#   key_name = "tera"
 
#   provisioner "remote-exec" {
#      connection {
#     type = "ssh"
#     user = "ubuntu"
#     private_key = file("/home/remotestate/Downloads/tera.pem")
#     host = self.public_ip
#   }
#     inline = [ 
#         "sudo amazon-linux-extras install nginx1",
#         "sudo systemctl start nginx"
#      ]
#   }
# }
