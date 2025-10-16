resource "aws_instance" "mongodb" {
vpc_security_group_ids=[aws_security_group.allow-all-SG.id]
ami =local.ami_id
instance_type = local.instance_type

tags= merge (
var.common_tags,
{
Name= "${local.common_name}-local-demo"
}
)
}

resource "aws_security_group" "allow-all-SG"{

name        = "${local.common_name}.allow_all"

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

tags= merge (
var.common_tags,
{
  Name= "${local.common_name}-local-demo"
}
)

}







