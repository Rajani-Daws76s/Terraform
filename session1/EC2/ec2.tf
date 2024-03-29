resource "aws_instance" "rajani" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "roboshop-all" { #this is terraform name $ for tf reference only
  name        = var.sg-name
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "allow all ports"
    from_port        = var.inbound-from-port    # 0 means all ports
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}