resource "aws_db_instance" "postgres" {
  allocated_storage      = var.db_allocated_storage
  engine                 = "postgres"
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  identifier             = "fastfooddb-instance" # Identificador único da instância RDS
  username               = var.db_username       # Nome de usuário mestre
  password               = var.db_password       # Senha do usuário mestre
  parameter_group_name   = var.db_parameter_group_name
  publicly_accessible    = var.db_publicly_accessible
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
}