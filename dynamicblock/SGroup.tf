resource "aws_security_group" "safety_sg"{

  name        = "safety-strict"

egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  dynamic "ingress" {
     for_each = toset(var.ingress_port)
  content {
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
}
  
  }

 tags = {
    Name = "safety-strict"
    terraform="yes"
  }

}
