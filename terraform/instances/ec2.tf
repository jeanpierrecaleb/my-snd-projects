# security group
resource "aws_security_group" "ec2_sgp" {
  name        = "allow_http"
  description = "Allow http and https inbound traffic"
  vpc_id      = var.my_vpc_id

  # allow https rule
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound rule to allow ICMP traffic
  ingress {
    from_port   = -1 # Allows all ICMP traffic, not just Echo Requests
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"] # Allow from anywhere
  }


  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags = {
    Name = "tf-ec2-security-group"
  }
}





# Define the instance

resource "aws_instance" "tf_ec2" {
  count                       = length(var.psubnet_cidrs)
  ami                         = var.ec2_ami
  instance_type               = var.my_instance_type
  subnet_id                   = element(var.subnet-psids, count.index)
  associate_public_ip_address = true
  security_groups =  [aws_security_group.ec2_sgp.id]
  tags = {
    Name = "Tfec2 instance ${count.index + 1}"
  }
}

output "ip_address" {
  value = aws_instance.tf_ec2[*].public_ip
}