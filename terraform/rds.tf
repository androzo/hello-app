resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  name                 = locals.aws_db_instance_name
  username             = data.aws_secretsmanager_secret.rds_user
  password             = data.aws_secretsmanager_secret.rds_pass
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}