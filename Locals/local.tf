locals {
  instance_type= "t2.micro"
  common_name="${var.project}-${var.environment}"
  ami_id= data.aws_ami.Safety.id
}

