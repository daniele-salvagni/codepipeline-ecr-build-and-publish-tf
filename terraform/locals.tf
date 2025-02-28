data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

locals {
  prefix     = "${var.project}-${var.env}"
  region     = data.aws_region.current.name
  account_id = data.aws_caller_identity.current.account_id
}
