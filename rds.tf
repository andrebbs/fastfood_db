resource "aws_db_instance" "postgres" {
  allocated_storage    = var.db_allocated_storage
  engine               = "postgres"
  engine_version       = "14.5" # Substitua pela versão desejada
  instance_class       = var.db_instance_class
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name = aws_db_subnet_group.postgres_subnet_group.name
  skip_final_snapshot  = true
  publicly_accessible  = false
}

resource "aws_db_subnet_group" "postgres_subnet_group" {
  name       = "postgres-subnet-group"
  subnet_ids = var.db_subnet_ids
  tags = {
    Name = "postgres-subnet-group"
  }
}