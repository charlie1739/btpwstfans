
# PWS SaaS variable
variable "apiuser" {
  type        = string
  description = "PWS API RunAs user ID"
  #default     = "chan"
}
variable "apikey" {
  type        = string
  description = "PWS API Key"
  #default     = "08a50e4994cf5772f05e5d510c0bfd8040cc0ab09f97b90319d77eb0205eaf806df46751b1f8e64ef778e9616ee29e16680cab029d8e3b6c93400ca491667de8"
}
variable "secretpath" {
  type        = string
  description = "PWS Secrets Path"
  #default = "charliehan-demo/charliehan-demo/aws-bisecrets01"
}

variable "apiurl" {
  type        = string
  description = "BI/PWS server api url"
  #default     = "https://setest.ps-staging.beyondtrustcloud.com/BeyondTrust/api/public/v3"
}

# AWS variable
variable "iam_access_key" {
  type        = string
  description = "AWS IAM user access key"
  #default   = "AKIAZYEJR2FMO36FKA7Y"
  default   = "null"
  sensitive = true
}
variable "iam_secrets_key" {
  type        = string
  description = "AWS IAM user secrets key"
  #default   = "2tDX98PqMlbkzgzfJ15F5MpEaZwGQ9RpSiVqMVZx"
  default   = "null"
  sensitive = true
}
variable "aws_regions" {
  #type        = string
  type        = list(string)
  description = "AWS Region"
  #default     = "us-east-1" # check your active region on AWS management console
  default = ["us-east-1"]
}
/*# create iam user
variable "userlist" {
  type = list
  default = ["testuser01", "testuser02", "testuser03"]
}
*/