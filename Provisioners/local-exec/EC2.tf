resource "aws_instance" "mongodb" {
  vpc_security_group_ids=[aws_security_group.allow-all-SG.id]
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  tags = {
    Name = "mongodb"
    terraform="yes"
  }

provisioner "local-exec" {
command= "echo ${self.private_ip} > inventory"
on_failure = continue
}

provisioner "local-exec" {
command= "echo instance is destroyed"
when= destroy
}

}

resource "aws_security_group" "allow-all-SG"{

  name        = "allow_to_all"

egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    tags = {
    Name = "allow_to_all"
    terraform="yes"
  }
}




