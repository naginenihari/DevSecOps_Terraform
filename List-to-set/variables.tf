variable "instances" {
  #default = ["mongodb","catalogue","redis","user","cart","mysql","shipping","rabbitmq","payment","frontend"]
   default = ["mongodb","catalogue"]
   }
  # default = { 
  #  mongodb="t2.micro"
  #  catalogue="t2.micro"
  #  redis="t3.micro"





variable "zone_id" {
  default = "Z05202297D7QR4S9L2JB"
}

variable "domain_name" {
  default ="naginenihariaws.store"
}