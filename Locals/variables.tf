variable "project" {
  default = "safety"
}

variable "environment" {
  default = "dev"
}

# variable "common_name" {
#   default = "${var.project}-${var.environment}"
# }

variable "ami_id" {
  type=string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type=string
  default = "t2.micro"
} 

variable "common_tags"{
 type= map 
 default ={
     terraform= "yes"
     project= "safety"
     environment= "dev"

}

 }

 variable "sg_name" {
  type=string
  default = "allow_to_all"
  description= "allow to all for ec2 server"
} 

 variable "cidr" {
  type= list
  default = ["0.0.0.0/0"]
} 

 variable "egress_from_port" {
  default = 0
}  

 variable "egress_to_port" {
  default = 0
} 

 variable "ingress_from_port" {
  default = 0
} 

 variable "ingress_to_port" {
  default = 0
} 

 variable "protocol" {
  type=string  
  default = "-1"
} 