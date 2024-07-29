# variable instance type
variable "my_instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "my_vpc_id" {
  type        = string
  description = "my vpc id"
}


variable "ec2_ami" {
  type        = string
  description = "ami of the instance in the subnet of a region"

}

variable "psubnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "subnet-psids" {
  type        = list(string)
  description = "Subnet group"
}
