# Referenciando o Security Group existente
data "aws_security_group" "rds_sg" {
  id = var.sgId
}

# Configurando o Subnet Group para o RDS
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group-rds"
  subnet_ids = [var.subnetA, var.subnetB, var.subnetC] # Usando as variáveis de subnets
  tags = {
    Name = "rds-subnet-group"
  }
}