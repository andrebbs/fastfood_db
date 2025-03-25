resource "null_resource" "create_database" {
  provisioner "local-exec" {
    command = <<EOT
      psql -h ${var.db_endpoint} \
           -U ${var.db_username} \
           -d postgres \
           -c "CREATE DATABASE fastfooddb;"
    EOT
    environment = {
      PGPASSWORD = var.db_password
    }
  }
}