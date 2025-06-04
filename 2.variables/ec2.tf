resource "aws_security_group" "sg21" {
 name= "sg21"
 description="expense project sg21"
 tags = var.sg_tags
 ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.cidr_blocks
 } 
 egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.cidr_blocks
 }
}

resource "aws_instance" "server1" {
  ami = var.ami
  vpc_security_group_ids=[aws_security_group.sg21.id]
  instance_type=var.instance_type
  tags=var.ec2_tags
}