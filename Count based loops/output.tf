output  "ami_details" {
  value       = data.aws_ami.expense-project
}

output "default_vpc" {
    value = data.aws_vpc.default.id
}