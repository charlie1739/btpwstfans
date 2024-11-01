terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
    passwordsafe = {
      source = "beyondtrust/passwordsafe"
      #version = "1.0.1"
    }
  }
}

# AWS Provider and data
provider "aws" {
  access_key = data.passwordsafe_secret.access_text.value
  secret_key = data.passwordsafe_secret.secrets_text.value
  region     = var.aws_regions[0] # 0 = us-east-1, 1 = us-east-2, 3 = us-west-1, 4 = us-west-2
}

data "aws_iam_users" "iam_users" {
  path_prefix = "/"
}

# Password Safe provider and ata @@@@@@@@@@@@@@@@@@@@@
provider "passwordsafe" {
  api_key          = var.apikey
  url              = var.apiurl
  api_account_name = var.apiuser
  verify_ca        = false
}

data "passwordsafe_secret" "secrets_text" {
  path  = var.secretpath
  title = "secrets_key" # secret name on PWS
}
data "passwordsafe_secret" "access_text" {
  path  = var.secretpath
  title = "access_key"
}
# End of Password Safe provider and ata @@@@@@@@@@@@@@@@@@@@@
