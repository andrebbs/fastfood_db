aws_region = "us-east-1"
db_name = "fastfood_db"
db_username = "admin"
db_password = "securepassword"
db_instance_class = "db.t3.micro"
db_allocated_storage = 20
vpc_security_group_ids = ["sg-0c52dcdb0a18aab05"]
db_subnet_ids = [
  "subnet-0da58b715c4447b40",
  "subnet-0dc8c17af2d69e6c4",
  "subnet-01e7d29bdec7e71dd"
]