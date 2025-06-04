output "ec2_info" {
  value = aws_instance.expense-project
}

output "frontend_public_ip" {
  value = aws_instance.expense-project[0].public_ip
}