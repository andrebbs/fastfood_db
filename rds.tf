resource "aws_db_instance" "postgres" {
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = "13.4" # Escolha a versão desejada
  instance_class       = "db.t3.micro" # Escolha a classe de instância
  name                 = "fastfooddb"
  username             = "admin"
  password             = "password"
  parameter_group_name = "default.postgres13"
  skip_final_snapshot  = true

  # Configuração de rede
  publicly_accessible = true
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
}