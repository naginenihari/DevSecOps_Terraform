data "aws_ami" "Safety" {
  owners           = ["973714476881"]
  most_recent      = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ami_id" {
 value=data.aws_ami.Safety.id
 }

data "aws_instance" "redis" {
  instance_id ="i-056281f1e1461e051"

}

output "redis-info" {
 value=data.aws_instance.redis.private_ip
 }