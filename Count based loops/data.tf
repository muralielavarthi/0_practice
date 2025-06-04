data "aws_ami" "expense-project" {
    most_recent= true #latest ami details, this should be true always
    owners=["973714476881"]
    filter { # multiple filters are used to find ami details
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
  
}
data "aws_vpc" "default" {
  default = true 
  #default vpc, for every region there will be default vpc
  # as per provider, the region is "us-east-1" so, it will default vpc details from there
}

output  "ami_id" {
  value       = data.aws_ami.joindevops.id
}

output "default_vpc_id" {
    value = data.aws_vpc.default.id
}