resource "aws_db_instance" "postgres" {
  allocated_storage      = var.db_allocated_storage
  engine                 = "postgres"
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  identifier             = "fastfooddb-instance"
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = var.db_parameter_group_name
  publicly_accessible    = var.db_publicly_accessible
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
}
