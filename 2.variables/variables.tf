variable "ami" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type= map
  default = {
    Project = "expense"
    Component = "backend"
    Environment = "dev"
    Name = "expense-backend-dev"
  }
}
variable "sg_tags" {
  type = map
  default = {
    Name = "expense-backend-dev"
  }
}

variable "cidr_blocks" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}