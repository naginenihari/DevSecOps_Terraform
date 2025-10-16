variable "ingress_port" {
  default =[22,80,8080,3306,27017]
} 

variable "cidr" {
  default =["0.0.0.0/0"]
} 