provider "aws" {
  region = "sa-east-1"
}

# best to use secret manager or vault to store sensitive data
data "vault_generic_secret" "rds_user" {
  path = "secret/rds_user-${var.environment}"
}

data "vault_generic_secret" "rds_pass" {
  path = "secret/rds_pass-${var.environment}"
}