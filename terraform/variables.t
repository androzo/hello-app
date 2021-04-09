variable "environment" {}
variable "rds_instance_class" {}
variable "rds_engine" {}
variable "rds_engine_version" {}

locals {
    aws_db_instance_name = "rds-instance-{var.environment}"
}