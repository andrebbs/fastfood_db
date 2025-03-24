resource "aws_db_instance" "postgres" {
  allocated_storage    = var.db_allocated_storage
  engine               = "postgres"
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  identifier           = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.db_parameter_group_name
  skip_final_snapshot  = true

  # Configuração de rede
  publicly_accessible   = var.db_publicly_accessible
  vpc_security_group_ids = [var.sgId] # Usando o Security Group existente
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
}

# resource "aws_db_subnet_group" "postgres_subnet_group" {
#   name       = "postgres-subnet-group"
#   subnet_ids = var.db_subnet_ids
#   tags = {
#     Name = "postgres-subnet-group"
#   }
# }