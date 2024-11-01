/*# create iam users
resource "aws_iam_user" "newiamuser" {
  name  = var.userlist[count.index]
  count = 3
  path = "/charlie-demo/"
}
*/
module "iam" {
  source  = "terraform-aws-modules/iam/aws"
  version = "0.0.7"
}