variable "aws_region" {
  default = "us-east-1" 
}

variable "db_name" {
  description = "Nome do banco de dados PostgreSQL"
  type        = string
  default     = "fastfooddb" 
}

variable "db_username" {
  description = "Master username for the RDS instance"
  type        = string
  default     = "fastfood_user_db" # Substitua por um nome válido
}

variable "db_password" {
  default = "fastFood@2025" 
}

variable "db_instance_class" {
  default = "db.t3.micro" 
}

variable "db_allocated_storage" {
  default = 20 
}

variable "vpc_security_group_ids" {
  type = list(string)
  default = ["sg-0c52dcdb0a18aab05"] 
}

variable "subnetA" {
  default = "subnet-0da58b715c4447b40"
}

variable "subnetB" {
  default = "subnet-0dc8c17af2d69e6c4"
}

variable "subnetC" {
  default = "subnet-01e7d29bdec7e71dd"
}

variable "sgId" {
  default = "sg-0c52dcdb0a18aab05"
}

variable "db_engine_version" {
  description = "The version of the database engine to use"
  type        = string
  default     = "14.17"
}

variable "db_parameter_group_name" {
  description = "The name of the DB parameter group"
  type        = string
  default     = "default.postgres12"
}

variable "db_publicly_accessible" {
  description = "Determines if the RDS instance is publicly accessible"
  type        = bool
  default     = false
}