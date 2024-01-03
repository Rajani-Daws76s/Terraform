resource "aws_instance" "rajani" {
  ami           = var.ami-id
  instance_type = var.instance_type 
  vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list
  tags = var.tags
}
