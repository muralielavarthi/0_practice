resource "aws_security_group" "sg22" {
  name        = "sg22"
  description = "sg22"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "expense-project" {
  count = length(var.instances)
  ami                    = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.sg22.id]
  instance_type          = "t3.micro"
  tags=merge(var.common_tags,{Name=var.instances[count.index]})
}