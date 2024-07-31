resource "aws_instance" "jenkins_ec2" {
  # vpc_id = var.j_ivpc
  subnet_id       = var.j_isubnet
  ami             = var.j_iami
  instance_type   = var.j_itype
  security_groups = var.j_isgp
  key_name = var.my_key_name
  tags = {
    Name = var.j_iname
  }

  # Use remote-exec to run commands on the instance

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install epel -y
              sudo yum install -y ansible
              EOF

  # end of user data oh
  ## yum install -y httpd
  ##  service httpd start
  ##  echo "Hello, World!" > /var/www/html/index.html

##provisioner "local-exec" {
##  command = "ansible-playbook -i ${self.public_ip}, ansible/provision_jenkins.yaml"
##}


}

output "j_ip_address" {
  value = aws_instance.jenkins_ec2.public_ip
}
