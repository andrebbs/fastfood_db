# Referenciando o Security Group existente
data "aws_security_group" "rds_sg" {
  id = var.sgId
}

# Configurando o Subnet Group para o RDS
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group-rds-fastfood-db"
  subnet_ids = [var.subnetA, var.subnetB, var.subnetC]

  tags = {
    Name = "RDS Subnet Group"
  }

  lifecycle {
    prevent_destroy = true
    ignore_changes  = [name, subnet_ids, tags]
  }
}