variable "ami_id" {
  type=string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type=string
  default = "t2.micro"
} 

variable "ec2_tags"{
 type= map 
 default ={
     Name= "mango-dev1"
     terraform= "yes"
     project= "safety"

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