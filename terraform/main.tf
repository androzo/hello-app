provider "aws" {
  region = "${var.region}"
}

data "aws_secretsmanager_secret" "rds_pass" {
  name = "secret/rds_pass-${var.environment}"
}

data "aws_secretsmanager_secret" "rds_user" {
  name = "secret/rds_user-${var.environment}"
}