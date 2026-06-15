resource "aws_instance" "this" {
  ami = var.ami_id ## MANDATORY
  instance_type = var.instance_type ## MANDATORY
  vpc_security_group_ids = var.sg_ids ## MANDATORY

  tags = var.tags ## OPTIONAL
}



