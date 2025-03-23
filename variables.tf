variable "aws_region" {
  default = "us-east-1" # Substitua pela região desejada
}

variable "db_name" {
  default = "fastfood_db"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "securepassword" # Substitua por uma senha segura
}

variable "db_instance_class" {
  default = "db.t3.micro" # Tipo de instância do RDS
}

variable "db_allocated_storage" {
  default = 20 # Armazenamento em GB
}

variable "vpc_security_group_ids" {
  type = list(string)
  default = ["sg-0c52dcdb0a18aab05"] # Substitua pelo ID do Security Group
}

variable "db_subnet_ids" {
  type = list(string)
  default = [
    "subnet-0da58b715c4447b40",
    "subnet-0dc8c17af2d69e6c4",
    "subnet-01e7d29bdec7e71dd"
  ] # Substitua pelos IDs das subnets
}