resource "aws_instance" "mongodb" {
  vpc_security_group_ids=[aws_security_group.allow-all-SG.id]
  ami           = var.ami_id
  instance_type = var.instance_type
  
  tags=var.ec2_tags
}

resource "aws_security_group" "allow-all-SG"{

  name        = var.sg_name

egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

    tags = {
    Name = "allow_to_all"
    terraform="yes"
  }
}




